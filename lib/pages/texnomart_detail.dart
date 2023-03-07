import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karzinka_full/core/models/texnomart/Items.dart';

class TexnoDetailScreen extends StatefulWidget {
  TexnoDetailScreen({Key? key, required this.item}) : super(key: key);
  Items item;

  @override
  State<TexnoDetailScreen> createState() => _TexnoDetailScreenState();
}

class _TexnoDetailScreenState extends State<TexnoDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    InkWell(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Color(
                          0xff130F26,
                        ),
                      ),
                      radius: 10,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    Expanded(
                      child: Text(
                        (widget.item.name.toString().length > 25)
                            ? widget.item.name.toString().substring(0, 25) + '...'
                            : widget.item.name.toString(),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 228,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://backend.texnomart.uz${widget.item.image}"),
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Маҳсулот ҳақида қисқача",
                        style: TextStyle(
                          fontSize: 16,
                            fontWeight: FontWeight.w600, color: Colors.black)),
                  ],
                ),

              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Text(widget.item.attributes5![0].attributeName.toString(),style: TextStyle(fontSize: 17.5,color: Colors.black54,fontWeight: FontWeight.w500),),
                      SizedBox(width: 5,),
                      Text(" : ${widget.item.attributes5![0].text.toString()}",style: TextStyle(fontSize: 17.5,color: Colors.black87,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Text(widget.item.attributes5![1].attributeName.toString(),style: TextStyle(fontSize: 17.5,color: Colors.black54,fontWeight: FontWeight.w500),),
                      SizedBox(width: 5,),
                      Text(" : ${widget.item.attributes5![1].text.toString()}",style: TextStyle(fontSize: 17.5,color: Colors.black87,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Text(widget.item.attributes5![2].attributeName.toString(),style: TextStyle(fontSize: 17.5,color: Colors.black54,fontWeight: FontWeight.w500),),
                      SizedBox(width: 5,),
                      Text(" : ${widget.item.attributes5![2].text.toString()}",style: TextStyle(fontSize: 17.5,color: Colors.black87,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Text(widget.item.attributes5![3].attributeName.toString(),style: TextStyle(fontSize: 17.5,color: Colors.black54,fontWeight: FontWeight.w500),),
                      SizedBox(width: 5,),
                      Text(" : ${widget.item.attributes5![3].text.toString()}",style: TextStyle(fontSize: 17.5,color: Colors.black87,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      Text(widget.item.attributes5![4].attributeName.toString(),style: TextStyle(fontSize: 17.5,color: Colors.black54,fontWeight: FontWeight.w500),),
                      SizedBox(width: 5,),
                      Text(" : ${widget.item.attributes5![4].text.toString()}",style: TextStyle(fontSize: 17.5,color: Colors.black87,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  SizedBox(height: 20,),
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
                            Colors.black,
                            size: 22,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "${widget.item.fSalePrice}",
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

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
