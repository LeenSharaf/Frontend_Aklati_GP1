// import 'package:flutter/material.dart';
// import 'package:test_homee/Shop/itemDetail.dart';
// import 'package:test_homee/main_home.dart';

// import '../Shop/shopData.dart';
// import '../constran.dart';


// class MainDish extends StatefulWidget {
//   const MainDish({Key? key}) : super(key: key);

//   @override
// // ignore: library_private_types_in_public_api
//   _ShopState createState() => _ShopState();
// }

// class _ShopState extends State<MainDish> {
//   final List<Shopdata> shopdata = [
//     Shopdata(
      
//         name: 'Open back Bloues.',
//         Image: 'lib/images/w1.png',

//         desc: 'For wheelchair lift sling use.',
//         price: '\$60',
//         namepage: 'aklat Baity',
//         logo: '',
        
//         ),
//     Shopdata(
//         name: 'Full back opening Bloues.',
//         Image: 'lib/images/foood.jpg',
//         desc: 'For who have difficulty ',
//         price: '\$70',
//         namepage: 'aklat Baity',
//         logo: '',),
//     Shopdata(
//         name: 'Foot sponge.',
//         Image: 'lib/images/ric.jpg',
//         desc: 'For who suffer from joint pain foot arthritis.',
//         price: '\$30' ,
//         namepage: 'aklat Baity',
//         logo: '',),
//     Shopdata(
//         name: 'Waist belt.',
//         Image: 'lib/images/ric.jpg',
//         desc: 'Easy to use and handle.',
//         price: '\$25',
//         namepage: 'aklat Baity',
//         logo: '',),
//     Shopdata(
//         name: 'Open back shirt.',
//         Image: 'lib/images/bryana.jpg',
//         desc: 'For back pain patients.',
//         price: '\$50',
//         namepage: 'aklat Baity',
//         logo: '',),
//     Shopdata(
//         name: 'Transfer Boards.',
//         Image: 'lib/images/kob.png',
//         desc: 'Assist in moving patients with minimum strain.',
//         price: '\$40',
//         namepage: 'aklat Baity',
//         logo: '',
//         )
//   ];

//   /*final List<Shopdata> shopdata = List.generate(
//       itemname.length,
//       (index) => Shopdata('${itemname[index]}', '${url[index]}',
//           '${itemdesc[index]}', '${itemprice[index]}'));*/
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(children: [
//       AppBar(
//           title: Text(
//             "PageName",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 20,
//                 fontFamily: "Mulish-VariableFont"),
//           ),
//           centerTitle: true,
//           backgroundColor: kPrimaryColor,
//           leading: IconButton(
//             onPressed: () => {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => Home()))
//             },
//             icon: Icon(
//               Icons.arrow_back_ios_new_outlined,
//             ),
//           ),
//           actions: [
//             IconButton(
//               onPressed: () => {
//                /* Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => Favourite()))*/
//               },
//               icon: Icon(
//                 Icons.search,
//               ),
//             ),
//             IconButton(
//               onPressed: () => {
//                /* Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => Order()))*/
//               },
//               icon: Icon(
//                 Icons.person,
//               ),
//             ),
//           ]),
          
//       Container(
//           // height: 500,
//           // height: double.infinity,

//           padding: EdgeInsets.only(top: 15),
//           decoration: BoxDecoration(
//             //color: Colors.white,
//             borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(35), topRight: Radius.circular(35)),
//           ),
//           child: Column(children: [
           
            
            
//             Container(
//               alignment: Alignment.centerLeft,
//               margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//               child: Text(
//                 " products for you",
//                 style: TextStyle(
//                     fontFamily: 'Mulish-VariableFont',
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black),
//               ),
//             ),
//             GridView(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                   maxCrossAxisExtent: 200,
//                   childAspectRatio: .69,
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 5),
//               /* itemCount: shopdata.length,
//              itemBuilder: (context, index) =>*/
//               children: shopdata.map((sh) {
//                 return Container(
//                   padding: EdgeInsets.only(left: 15, right: 15, top: 7),
//                   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                        boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.5),
//         spreadRadius: 5,
//         blurRadius: 7,
//         offset: Offset(0, 3), // changes position of shadow
//       ),
//     ],
//                       borderRadius: BorderRadius.circular(20)),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           /*Container(
//                             padding: EdgeInsets.all(2),
//                             decoration: BoxDecoration(
//                                 color: kPrimaryColor,
//                                 borderRadius: BorderRadius.circular(20)
//                                 ),
//                             /*child: Text(
//                               "-10%",
//                               style: TextStyle(
//                                   fontSize: 15,
//                                   color: Colors.white,
//                                   fontFamily: "Mulish-VariableFont",
//                                   fontWeight: FontWeight.bold),
//                             ),*/
//                           ),*/
                          
//                         ],
//                       ),
//                       InkWell(
//                        /* onTap: () {
//                           Navigator.of(context).push(MaterialPageRoute(
//                               builder: (context) => Itemdetail(
//                                     shopdata: Shopdata(
//                                         name: sh.name,
//                                         Image: sh.Image,
//                                         desc: sh.desc,
//                                         price: sh.price,
//                                         namepage: sh.namepage,
//                                         logo: sh.logo
//                                         ),
//                                   )));
//                         },*/
//                         child: Container(
//                             margin: EdgeInsets.all(5),
//                             child: Image.asset(
//                               sh.Image,
//                               height: 120,
//                               width: 120,
//                             )),
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(bottom: 5),
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           sh.name,
//                           style: TextStyle(
//                               fontSize: 10,
//                               color: Colors.black,
//                               fontFamily: "Mulish-VariableFont",
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Container(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           sh.desc,
//                           style: TextStyle(
//                               fontSize: 8,
//                               color: Colors.black,
//                               fontFamily: "Mulish-VariableFont",
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(vertical: 7),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(sh.price,
//                                 style: TextStyle(
//                                     fontSize: 15,
//                                     color: Colors.black,
//                                     fontFamily: "Mulish-VariableFont",
//                                     fontWeight: FontWeight.bold)),
                           
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               }).toList(),
//             ),
//           ]))
//     ]),
   
//     );
//   }
// }
// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:test_homee/Shop/shopData.dart';
import 'package:test_homee/Shop/testfordetail.dart';
import 'package:test_homee/constran.dart';
import 'package:test_homee/main_home.dart';

import '../Shop/itemDetail.dart';


class popular extends StatefulWidget {
  final String username;
  const popular({Key? key, required this.username}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _popularState createState() => _popularState();
}

class _popularState extends State<popular> {
  void initState() {
    super.initState();
    getData();
  }

  static var shopdata = [];
  List display_List = List.from(shopdata);
  getData() async {
    var url = 'http://192.168.1.109/connect/getpopular.php';

    var response = await http.get(Uri.parse(url));

    setState(() {
      shopdata = json.decode(response.body);
      display_List = List.from(shopdata);
    });

    print(display_List);
    return shopdata;
  }

  void updateList(String value) {
    setState(() {
      display_List = shopdata
          .where((element) =>
              element['name'].toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      AppBar(
          title: Text(
            "Popular Dishes",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Mulish-VariableFont"),
          ),
          centerTitle: true,
          backgroundColor: kPrimaryColor,
          leading: IconButton(
            onPressed: () => {
              // Navigator.of(context).push(MaterialPageRoute(
              //     builder: (context) => Home(id: id,)))
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 15,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () => {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => Favourite()))
              },
              icon: Icon(
                Icons.favorite_outline_outlined,
                size: 15,
              ),
            ),
            IconButton(
              onPressed: () => {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) => CartScreen()))
              },
              icon: Icon(
                Icons.shopping_bag_rounded,
                size: 15,
              ),
            ),
          ]),
      Container(
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 245, 243, 243),
          ),
          child: Column(children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              decoration: BoxDecoration(
                  //color: Colors.white,
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 240,
                      child: TextFormField(
                        onChanged: ((value) => updateList(value)),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                              fontFamily: "Mulish-VariableFont", fontSize: 12),
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                    //Spacer(),
                    Icon(
                      Icons.search,
                      size: 20,
                      color: Color.fromARGB(255, 163, 165, 163),
                    )
                  ],
                ),
              ),
            ),
            // Container(
            //   alignment: Alignment.centerLeft,
            //   margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            //   color: Color.fromARGB(255, 245, 243, 243),
            //   child: Image.asset(
            //     'images/wecare.jpg',
            //     height: 170,
            //     width: double.infinity,
            //   ),
            // ),
            GridView.builder(
              itemCount: display_List.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: .69,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 5),
              itemBuilder: (context, index) => 
               // padding: EdgeInsets.only(left: 15, right: 15, top: 7),
                 Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 7),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Itm(
                                    shopdata: data(
                                          name: display_List[index]['pr_name'],
                                          Image: display_List[index]
                                              ['pr_img'],
                                          desc: display_List[index]['pr_desc'],
                                          price: display_List[index]['pr_price'], 
                                          namepage: display_List[index]['pr_page'],
                                          // logo: display_List[index]['page_logo']
                                          ),

                                      //username: widget.username,
                                  )));
                        },
                        child: Container(
                            margin: EdgeInsets.all(5),
                            child: Image.asset(
                              display_List[index]['pr_img'],
                              height: 120,
                              width: 120,
                            )),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom: 5),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          display_List[index]['pr_name'],
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontFamily: "Mulish-VariableFont",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          display_List[index]['pr_desc'],
                          style: TextStyle(
                              fontSize: 8,
                              color: Colors.black,
                              fontFamily: "Mulish-VariableFont",
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(display_List[index]['pr_price'] + "\$",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                    fontFamily: "Mulish-VariableFont",
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            
          ]))
    ]));
  }
}
