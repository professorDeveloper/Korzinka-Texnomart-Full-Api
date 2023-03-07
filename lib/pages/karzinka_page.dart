import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karzinka_full/pages/bloc/pagination_bloc.dart';
import 'package:karzinka_full/pages/product_info_page.dart';
import 'package:karzinka_full/pages/bloc/states/pagination_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'bloc/events/pagination_event.dart';

class KarzinkaPage extends StatefulWidget {
  const KarzinkaPage({Key? key}) : super(key: key);

  @override
  State<KarzinkaPage> createState() => _KarzinkaPageState();
}

class _KarzinkaPageState extends State<KarzinkaPage> {
  final bloc = PaginationBloc();
  final controller = RefreshController();
  final controllerTe = TextEditingController();

  @override
  void initState() {

    bloc.add(PaginationInitEvent());
    super.initState();
  }

  @override
  void dispose() {
    bloc.close();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: BlocConsumer<PaginationBloc, PaginationState>(
        listener: (context, state) {
          if (state.status == Status.success) {
            controller.refreshCompleted();
            controller.loadComplete();
          }
        },
        builder: (context, state) {
          return SafeArea(
              child: Scaffold(
                backgroundColor: Colors.white,
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Container(
                          width: double.infinity,
                          margin:EdgeInsets.only(left: 17,bottom:10,right: 17),
                          child: TextField(
                            onSubmitted: (value) {
                              if(value.isEmpty){
                                bloc.add(PaginationInitEvent());
                                print("empy");
                              }else{
                                bloc.add(PaginationSearchEvent(value));
                              }
                            },
                            textInputAction: TextInputAction.go,
                            controller:controllerTe ,
                            cursorColor: Colors.black,
                            enableInteractiveSelection: true,
                            style: TextStyle(fontSize: 15.5),
                            decoration: InputDecoration(
                              hintText: "Mahsulotlar...",
                              suffixIcon: InkWell(
                                onTap: (){
                                  bloc.add(PaginationSearchEvent(controllerTe.text));
                                },
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: BorderSide(
                                  color: Color(0xff626262),
                                  width: 2.0,
                                ),
                              ),
                              hintStyle:
                              TextStyle(fontSize: 15.5, color: Color(0xff878787)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 18),
                            ),
                          ),
                        ),
                      )
                      ,
                      Container(
                        height: 578,
                        child: Builder(builder: (context) {
                          if(state.status==Status.loadingFirst||state.status==Status.loadingSearch){
                            return Center(child: CircularProgressIndicator());
                          }
                          else{
                            return Container(
                              height: double.infinity,
                              width: double.infinity,
                              child: SmartRefresher(
                                enablePullDown: true,
                                enablePullUp: true,
                                controller: controller,
                                onRefresh: () => bloc.add(PaginationInitEvent()),
                                onLoading: () => bloc.add(PaginationNextEvent()),
                                child: GridView.builder(
                                  physics: BouncingScrollPhysics(),
                                  itemCount: state.products.length,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 8,
                                    childAspectRatio: 2 / 2.3,
                                    mainAxisSpacing: 2,
                                  ),
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context){

                                            return  ProductDetailScreen(product:state.products[index],);
                                          },));

                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 9.0, right: 10, left: 10, top: 8),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(16),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.shade400,
                                                    blurRadius: 4,
                                                    offset: const Offset(2, 2),
                                                  )
                                                ]),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  height: 113,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.circular(12),
                                                    image: DecorationImage(
                                                        fit: BoxFit.fill,
                                                        image: NetworkImage(
                                                            "https://api.lebazar.uz${state.products[index].images![0].mediumUrl}")),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 10,left: 6,right: 5),
                                                  child: Text(
                                                    textAlign: TextAlign.center,
                                                    state.products[index].name.toString(),
                                                    maxLines: 1,
                                                    style: const TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 13,
                                                ),
                                                Padding(
                                                  padding:
                                                  const EdgeInsets.symmetric(horizontal: 10),
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 40,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xffE7E9E8),
                                                        borderRadius: BorderRadius.circular(12)),
                                                    alignment: Alignment.center,
                                                    child: GestureDetector(
                                                      onTap: () {},
                                                      behavior: HitTestBehavior.opaque,
                                                      child: Center(
                                                          child: Text(
                                                              "${state.products[index].price}  сум")),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }
                        },),
                      ),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
