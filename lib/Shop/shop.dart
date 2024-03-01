import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';
import '../products_screen.dart';
import 'package:http/http.dart' as http;


import 'shopData.dart';
import 'testfordetail.dart';


class Shop extends StatefulWidget {


  const Shop({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void initState() {
    super.initState();
  }

  static var shopdata = [];
  
  //var ip = Connection.IP;




  // final List<Shopdata> shopdata = [
  //   Shopdata(
      
  //       name: 'Open back Bloues.',
  //       Image: 'lib/images/mansf.jpg',

  //       desc: 'For wheelchair lift sling use.',
  //       price: '\$60',
  //       namepage: 'aklat Baity',
  //       logo: '',
        
  //       ),
  //   Shopdata(
  //       name: 'Full back opening Bloues.',
  //       Image: 'lib/images/foood.jpg',
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
            body: ListView(children: [
          
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    " Types for you",
                    style: TextStyle(
                             fontFamily: 'Varela',
                                              fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
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
//                       borderRadius: BorderRadius.circular(20),
//                boxShadow: [
//       BoxShadow(
//         color: Colors.grey.withOpacity(0.5),
//         spreadRadius: 5,
//         blurRadius: 7,
//         offset: Offset(0, 3), // changes position of shadow
//       ),
//     ],
//                       ),
//                   child: Column(
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
                             
//                           IconButton(
//                             onPressed: () => {
//                              Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) => favorite(
//                                         favoritedata: Favirotedata(
//                                             name: sh.name,
//                                             ImageUrl: sh.Image,
//                                             desc: sh.desc,
//                                             price: sh.price,
//                                             namepage: sh.namepage,
//                                             logo: sh.logo
//                                             ),
//                                       )))
//                             },
//                             icon: Icon(
//                               Icons.favorite_border,
//                               color: Colors.black,
//                               //size: 15,
//                             ),
//                           ),
//                         ],
//                       ),
//                       InkWell(
//                        onTap: () {
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
//                         },
//                         child: Container(
//                             margin: EdgeInsets.all(5),


                                
//                             child: Image.asset(
//                               sh.Image,
//                               //"lib/images/ric.jpg",
                                  
//                               height: 100,
//                               width: 100,
//                             )),
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(bottom: 5),
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           sh.name,
//                           style: TextStyle(
//                               fontSize: 15,
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
//                               fontSize: 10,
//                               color: Colors.black,
// fontFamily: 'Varela',
//     fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(vertical: 7),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(sh.price,
//                                 style: TextStyle(
//                                     fontSize: 13,
//                                     color: Colors.black,
//                                    // fontFamily: "Mulish-VariableFont",
//                                     fontWeight: FontWeight.bold)),
//                             Icon(Icons.shopping_cart)
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 );
//               })
//               .toList(),
//             ),
GridView.builder(
                  itemCount: provider.filteredItems.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: .69,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 5),
                  itemBuilder: (context, index) => 
                     // padding: EdgeInsets.only(left: 15, right: 15, top: 7),
                       InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Itm(shopdata: provider.filteredItems[index])));
                        },
                         child: Container(
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
                               ],
                                      
                              ),
                              child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                             padding: EdgeInsets.all(2),
                                child: Text(
                                  provider.filteredItems[index].discount.toString() + "%",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                          
                          
                         
                         IconButton(
                                  onPressed: () async {
                                    if(provider.filteredItems[index].isLiked){
                                      await provider.disLikeItem(provider.filteredItems[index].id!);
                                    }
                                    else{
                                    await provider.likeItem(provider.filteredItems[index].id!);
                                    }
                                  },
                                  icon:provider.filteredItems[index].isLiked?Icon(Icons.favorite,color: Colors.red,): Icon(
                                    Icons.favorite_border,
                                    color: Colors.black,
                                    //size: 15,
                                  ),
                                ),
                          
                          
                        ],
                      ),
                      InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Itm(
                                            shopdata:provider.filteredItems[index],
                       
                                            //id: widget.id,
                                          )));
                                },
                                child: Container(
                                    margin: EdgeInsets.all(2),
                                    child: Image.network(
                                      provider.filteredItems[index].img,
                                      height: 100,
                                     width: 100,
                                    )
                                    ),
                              ),
                     Container(
                                padding: EdgeInsets.only(bottom: 3),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  provider.filteredItems[index].name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                      
                     Padding(
                              padding: EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(provider.filteredItems[index].price.toString() + "\₪",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontFamily: "Mulish-VariableFont",
                                            fontWeight: FontWeight.bold)),
                                  
                                ],
                              ),
                            )
                    ],
                  ),
                          
                                             ),
                       )
                ),
              ]));
      }
    );
    
  }
}
