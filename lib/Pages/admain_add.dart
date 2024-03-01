import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/profile/AdminProfile.dart';
import 'package:roaa/providers/AppProvider.dart';
import '../Admin_cart/inReview.dart';
import '../Admin_cart/inprogress.dart';
import '../Pages/discount.dart';
import '../Pages/edit_order.dart';
import '../Shop/itemDetail.dart';
import '../main_home.dart';

import '../Shop/shopData.dart';
import '../constran.dart';
import '../customer/loginfor_smalluser.dart';
import '../models/item.dart';
import '../profile/AdminEditProfile.dart';
import 'add_new.dart';
import 'package:http/http.dart' as http;



class AdminHome extends StatefulWidget {
  //final int id;

  const AdminHome({Key? key, 
  }) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<AdminHome> {
void initState() {
    super.initState();
    
  }

  static var shopdata = [];
  
  List display_List = List.from(shopdata);
  //var ip = Connection.IP;
  

  // void updateList(String value) {
  //   setState(() {
  //     display_List = shopdata
  //         .where((element) =>
  //             element['name'].toLowerCase().contains(value.toLowerCase()))
  //         .toList();
  //   });
  // }














  // final List<Shopdata> shopdata = [
  //   Shopdata(
      
  //       name: 'Muskhan',
  //       Image: 'lib/popular_dishes/muskhan.png',

  //       desc: 'dish composed of roasted chicken baked with onions, sumac, allspice, saffron, .',
  //       price: '\$60',
  //       namepage: 'aklat Baity',
  //       logo: '',
        
  //       ),
  //   Shopdata(
  //       name: 'Full back opening Bloues.',
  //       Image: 'lib/popular_dishes/mansaf.png',
  //       desc: 'For who have difficulty ',
  //       price: '\$70',
  //       namepage: 'aklat Baity',
  //       logo: '',),
  //   Shopdata(
  //       name: 'Foot sponge.',
  //       Image: 'lib/images/ric.jpg',
  //       desc: 'For who suffer from joint pain foot arthritis.',
  //       price: '\$30' ,
  //       namepage: 'aklat Baity',
  //       logo: '',),
  //   Shopdata(
  //       name: 'Waist belt.',
  //       Image: 'lib/images/ric.jpg',
  //       desc: 'Easy to use and handle.',
  //       price: '\$25',
  //       namepage: 'aklat Baity',
  //       logo: '',),
  //   Shopdata(
  //       name: 'Open back shirt.',
  //       Image: 'lib/images/bryana.jpg',
  //       desc: 'For back pain patients.',
  //       price: '\$50',
  //       namepage: 'aklat Baity',
  //       logo: '',),
  //   Shopdata(
  //       name: 'Transfer Boards.',
  //       Image: 'lib/images/kob.png',
  //       desc: 'Assist in moving patients with minimum strain.',
  //       price: '\$40',
  //       namepage: 'aklat Baity',
  //       logo: '',
  //       )
  // ];

  /*final List<Shopdata> shopdata = List.generate(
      itemname.length,
      (index) => Shopdata('${itemname[index]}', '${url[index]}',
          '${itemdesc[index]}', '${itemprice[index]}'));*/
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context,provider,c) {
        return Scaffold(
          
          drawer: Drawer(
            backgroundColor: kPrimaryColor,
            child: ListView(padding: EdgeInsets.zero, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(13),
                    // child: Divider(
                    //  color: Color.fromARGB(162, 248, 246, 246),
                    //  height: 1,
                    // )
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminEditProfile()));
                    },
                    leading: CircleAvatar(
                      // height: 34,
                      // width: 34,
                      backgroundColor: Colors.white,
                      child: Icon(
                        CupertinoIcons.person,
                        color: Color.fromARGB(255, 146, 14, 14),
                      ),
                    ),
                    title: Text(
                      provider.adminInfo.fullName,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 24,top: 32,bottom: 16),child: 
                Text("Browse".toUpperCase(),style: TextStyle(color: 
                Color.fromARGB(255, 233, 221, 221),fontSize: 16),
                //textAlign: TextAlign.left
                ),),
                  Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Divider(
                        color: Color.fromARGB(162, 248, 246, 246),
                        height: 1,
                      )),
                  ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Divider(
                        color: Color.fromARGB(162, 248, 246, 246),
                        height: 1,
                      )),
                 
                  
                  
                 
                  ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Notifications",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Divider(
                        color: Color.fromARGB(162, 248, 246, 246),
                        height: 1,
                      )),

                      ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Chat List",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Divider(
                        color: Color.fromARGB(162, 248, 246, 246),
                        height: 1,
                      )),
                  
                  ListTile(
                    onTap: () {
                      Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => discount(
                                                
                                              )));
                    },
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.percent,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "discount",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),



                  Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: Divider(
                        color: Color.fromARGB(162, 248, 246, 246),
                        height: 1,
                      )),

                      
                  ListTile(
                    onTap: () {
                      Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>inRev()));
                    },
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.watch_later_outlined,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Order Review",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>inProg()));
                    },
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.food_bank_outlined ,                   
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Order in Progress",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  ListTile(
                    onTap: () {
                      Navigator.push(
                    context, MaterialPageRoute(builder: (_) => LoginUser()));
                    },
                    leading: SizedBox(
                      height: 34,
                      width: 34,
                      child: Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                 








                ],
              )
            ]),
          ),
        appBar:  AppBar(
              title: Text(
                "Home Page",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Mulish-VariableFont",
                    fontSize: 15),
              ),
                        centerTitle: true,

              backgroundColor: kPrimaryColor,
              actions: [
                IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
              ]
             
            ),
            body: ListView(children: [
              SingleChildScrollView(child: Column(children: [
                Container(
                  
                  padding: EdgeInsets.all(10),
                  child: Image.network(
                    //page logo
                    provider.adminInfo.logo,
                    height: 150,
                    width: 150,
                  ),
                ),
              
                Container(

              
                  child: Text(
                    //name page
                    provider.adminInfo.pageName.toUpperCase(),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontFamily: "Mulish-VariableFont",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //////////////////////////////////////////
              ]),),
              
        Divider(
indent:20,
        endIndent:20,                      color: Color.fromARGB(255, 146, 14, 14),
                          thickness: 3),
                           SizedBox(
                  height: 10,
                ),

          Container(
              // height: 500,
              // height: double.infinity,

              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              ),
              child: Column(children: [
               
                
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    "My Products ",
                    style: TextStyle(
                        fontFamily: 'Mulish-VariableFont',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),

GridView.builder(
                  itemCount: provider.userItems.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: .69,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) {
                     // padding: EdgeInsets.only(left: 15, right: 15, top: 7),
                     // product component 
                     Item item=provider.userItems[index];
                       return Container(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 0),
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                   boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],),

child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(20)
                                    ),
                                child: Text(
                                    item.discount.toString(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              IconButton(
                                onPressed: ()  {
                                  provider.setItemForEdit(item);
                                 Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => editOrder(
                                                
                                              )));
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: kBlueColor,
                                ),
                              ),
                            ],
                          ),
 InkWell(
                            
                            child: Container(
                                  margin: EdgeInsets.all(2),
                                  child: Image.network(
                                    
                                    item.img
                                    ,
                                    height: 100,
                                   width: 100,
                                  )
                                  ),
                          ),
                          Container(
                              padding: EdgeInsets.only(bottom: 3),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                item.name??'',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontFamily: "Mulish-VariableFont",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  
 IconButton(
                                onPressed: () async {
                                  await provider.deleteItem(item.id!);
                                },
                               
                                icon: Icon(
                                  Icons.delete,
                                  color: kBlueColor,
                                  //size: 15,
                                ),
                              ),
                                ],
                              ),
                            )




                        ],
),
                       




                            
                        
                      );
      }
                ),























        //         GridView(
        //           physics: NeverScrollableScrollPhysics(),
        //           shrinkWrap: true,
        //           gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        //               maxCrossAxisExtent: 200,
        //               childAspectRatio: .69,
        //               crossAxisSpacing: 10,
        //               mainAxisSpacing: 5),
        //           /* itemCount: shopdata.length,
        //          itemBuilder: (context, index) =>*/
        //           children: shopdata.map((sh) {
        //             return Container(
        //               padding: EdgeInsets.only(left: 15, right: 15, top: 7),
        //               margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //               decoration: BoxDecoration(
        //                   color: Colors.white,
        //                    boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.5),
        //     spreadRadius: 5,
        //     blurRadius: 7,
        //     offset: Offset(0, 3), // changes position of shadow
        //   ),
        // ],
        //                   borderRadius: BorderRadius.circular(20)),
        //               child: Column(
        //                 children: [
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                     children: [
        //                       Container(
        //                         padding: EdgeInsets.all(2),
        //                         decoration: BoxDecoration(
        //                             color: kPrimaryColor,
        //                             borderRadius: BorderRadius.circular(20)
        //                             ),
        //                         child: Text(
        //                           "-10%",
        //                           style: TextStyle(
        //                               fontSize: 15,
        //                               color: Colors.white,
        //                               fontFamily: "Mulish-VariableFont",
        //                               fontWeight: FontWeight.bold),
        //                         ),
        //                       ),
        //                       IconButton(
        //                         onPressed: () => {
        //                          /* Navigator.of(context).push(MaterialPageRoute(
        //                               builder: (context) => Itemdetail(
        //                                     shopdata: Shopdata(
        //                                         name: sh.name,
        //                                         ImageUrl: sh.ImageUrl,
        //                                         desc: sh.desc,
        //                                         price: sh.price),
        //                                   )))*/
        //                         },
        //                         icon: Icon(
        //                           Icons.edit,
        //                           color: kBlueColor,
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                   InkWell(
        //                     /*onTap: () {
        //                       Navigator.of(context).push(MaterialPageRoute(
        //                           builder: (context) => Itemdetail(
        //                                 shopdata: Shopdata(
        //                                     name: sh.name,
        //                                     Image: sh.Image,
        //                                     desc: sh.desc,
        //                                     price: sh.price,
        //                                     namepage: sh.namepage,
        //                                     logo: sh.logo
        //                                     ),
        //                               )));
        //                     },*/
        //                     child: Container(
        //                         margin: EdgeInsets.all(5),
        //                         child: Image.asset(
        //                           sh.Image,
        //                           height: 120,
        //                           width: 120,
        //                         )),
        //                   ),
        //                   Container(
        //                     padding: EdgeInsets.only(bottom: 5),
        //                     alignment: Alignment.centerLeft,
        //                     child: Text(
        //                       sh.name,
        //                       style: TextStyle(
        //                           fontSize: 10,
        //                           color: Colors.black,
        //                           fontFamily: "Mulish-VariableFont",
        //                           fontWeight: FontWeight.bold),
        //                     ),
        //                   ),
        //                   Container(
        //                     alignment: Alignment.centerLeft,
        //                     child: Text(
        //                       sh.desc,
        //                       style: TextStyle(
        //                           fontSize: 8,
        //                           color: Colors.black,
        //                           fontFamily: "Mulish-VariableFont",
        //                           fontWeight: FontWeight.bold),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: EdgeInsets.symmetric(vertical: 7),
        //                     child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                       children: [
        //                         Text(sh.price,
        //                             style: TextStyle(
        //                                 fontSize: 15,
        //                                 color: Colors.black,
        //                                 fontFamily: "Mulish-VariableFont",
        //                                 fontWeight: FontWeight.bold)),
        //                         Icon(Icons.delete,
        //                          color: kBlueColor,)
        //                       ],
        //                     ),
        //                   )
        //                 ],
        //               ),
        //             );
        //           }).toList(),
        //         ),
              ]))
        ]),
        floatingActionButton:FloatingActionButton(

          child: 
              Icon(Icons.add,
              ),
                backgroundColor: kBlueColor,

              onPressed:(){
                Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddProductPage(),
                            )
                          );
                                            
                                          
              }
              ),
        );
      }
    );
  }
}
