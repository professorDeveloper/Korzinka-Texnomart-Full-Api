import 'package:flutter/material.dart';
import 'package:karzinka_full/pages/karzinka_page.dart';
import 'package:karzinka_full/pages/texnomart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePaageState();
}

class _HomePaageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                      padding:
                      EdgeInsets.only(
                          top: 15,
                          bottom: 15),
                      decoration:
                      BoxDecoration(
                        borderRadius:
                        BorderRadius
                            .circular(
                            12),
                        color:
                        Color(0xfffbc200),
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){

                            return  TexnomartPage();
                          },));

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .center,
                          children: [
                            Icon(
                              Icons
                                  .phone_android_rounded,
                              color:
                              Colors.black,
                              size: 22,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Texnomart",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors
                                      .black,
                                  fontWeight:
                                  FontWeight
                                      .w700),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
                      padding:
                      EdgeInsets.only(
                          top: 15,
                          bottom: 15),
                      decoration:
                      BoxDecoration(
                        borderRadius:
                        BorderRadius
                            .circular(
                            12),
                        color:
                        Color(0xfff82b2b),
                      ),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){

                            return  KarzinkaPage();
                          },));

                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .center,
                          children: [

                            Icon(
                              Icons
                                  .shopping_cart,
                              color:
                              Colors.white,
                              size: 22,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "Karzinka",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors
                                      .white,
                                  fontWeight:
                                  FontWeight
                                      .w600),
                            ),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}
