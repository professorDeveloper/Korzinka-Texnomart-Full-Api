

import 'package:karzinka_full/pages/bloc/events/texnomart_event.dart';
import 'package:karzinka_full/pages/bloc/states/texnomart_state.dart';

import '../../core/api/texnomart_api.dart';
import '../../di.dart';
import 'package:bloc/bloc.dart';

class TexnomartBloc extends Bloc<TexnomartEvent, TexnomartState> {
  final _api = di.get<TexnomartApi>();

  TexnomartBloc() : super(const TexnomartState()) {
    on<TexnomartInitEvent>((event, emit) async {
    await  Future.delayed(Duration(milliseconds: 1200));
      emit(state.copyWith(
        status: Status.loadingFirst,
        page: 0,
        hasData: true,
      ));
      try {
        var listCat = await _api.texnomartCategorys();
        var listProducts = await _api.texnomartCatByProducts(slug: listCat[event.index].slug.toString(), page: '1');
        emit(
          state.copyWith(
            status: Status.success,
            products:listProducts ,
            categorys:listCat ,),
        );
      } catch (e) {
        print(e.toString());
      }
    });
    on<TexnomartCatByProductsEvent>((event, emit) async {
    await  Future.delayed(Duration(milliseconds: 1000));
      emit(state.copyWith(
        status: Status.loadingSearch,
        page: 1,
        hasData: true,
      ));
      try {
        print("asdasdasd");
        emit(
          state.copyWith(
            status: Status.success,
            products: await _api.texnomartCatByProducts( page :state.page.toString(), slug :event.slug),
            categorys: await _api.texnomartCategorys()),
        );
      } catch (e) {
        print("asd".toString());
        print(e.toString());
      }
    });
    on<TexnomartNextEvent>((event, emit) async {
      await Future.delayed(Duration(milliseconds: 700));
      try {
        print("asdasdasd");
        var products=await _api.texnomartCatByProducts( page :(state.page.toInt()+3).toString(), slug :event.slug);
        emit(
          state.copyWith(
            status: Status.loadingNextSuc,
              products: [...state.products, ...products],
            categorys: await _api.texnomartCategorys()),
        );
      } catch (e) {
        print("asd".toString());
        print(e.toString());
      }
    });
    on<TexnomartSearchEvent>(((event, emit)async {
      emit(state.copyWith(
        status: Status.loadingSearch,
        page: 1,
        hasData: true,
      ));

        var searchProducts=await _api.texnomartSearch(slug: event.text,page: "1");
        emit(state.copyWith(
          status: Status.success,
          page: 1,
          categorys: [],
          products: searchProducts,
          hasData: true,
        ));


    }));
  }
}
