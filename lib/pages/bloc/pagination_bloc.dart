

import 'package:karzinka_full/core/api/karzinka_api.dart';
import 'package:karzinka_full/pages/bloc/states/pagination_state.dart';

import '../../di.dart';
import 'package:bloc/bloc.dart';
import 'events/pagination_event.dart';

class PaginationBloc extends Bloc<PaginationEvent, PaginationState> {
  final _api = di.get<KarzinkaEbazaarApi>();

  PaginationBloc() : super(const PaginationState()) {
    on<PaginationInitEvent>((event, emit) async {
    await  Future.delayed(Duration(milliseconds: 1000));
      emit(state.copyWith(
        status: Status.loadingFirst,
        offset: 0,
        hasData: true,
      ));
      try {
        emit(
          state.copyWith(
            status: Status.success,
            products: await _api.searchProducts(
              offset: state.offset,
              limit: state.limit,
            ),
          ),
        );
      } catch (e) {
        print(e.toString());
      }
    });
    on<PaginationSearchEvent>((event, emit) async {
      print("start");
      await  Future.delayed(Duration(milliseconds: 1000));
      emit(state.copyWith(
        status: Status.loadingSearch,
        offset: 0,
        hasData: true,
      ));
      try {
        print("try");
        emit(
          state.copyWith(
            status: Status.success,
            products: await _api.searchProducts(
              offset: state.offset,
              limit: state.limit,
              search: event.text
            ),
          ),
        );
      } catch (e) {
        print(e.toString());
      }    });
    on<PaginationNextEvent>((event, emit) async {
      if (!state.enabled) return;

      emit(state.copyWith(
        status: Status.loading,
        offset: state.offset + state.limit,
      ));
      try {
        await Future.delayed(Duration(milliseconds: 700));
        final products = await _api.searchProducts(
          offset: state.offset,
          limit: state.limit,
        );
        emit(
          state.copyWith(
            status: Status.success,
            hasData: products.isNotEmpty,
            products: [...state.products, ...products],
          ),
        );
      } catch (e) {}
    });
  }
}
