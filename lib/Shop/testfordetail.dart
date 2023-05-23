
// import 'dart:convert';
// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// //import 'package:test_homee/constran.dart';
// //import 'package:test_homee/profile/profile_screen.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import 'shopData.dart';


// class Itm extends StatefulWidget {
//  final data shopdata;
//   //final int id;
//   const Itm({Key? key, required this.shopdata}) : super(key: key);
//   //const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

//   @override
//   _ItemdetailState createState() => _ItemdetailState();
// }

// class _ItemdetailState extends State<Itm> {


// Future<void> _dialogBuilder(BuildContext context) {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Are You Sure ?',style:
//            TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
//           backgroundColor: Colors.white,
//          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
//           actions: <Widget>[
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('No',style:TextStyle(color: Color.fromARGB(255, 146, 14, 14),fontWeight: FontWeight.bold,fontSize: 18) ,),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 textStyle: Theme.of(context).textTheme.labelLarge,
//               ),
//               child: const Text('Yes',style:TextStyle(color: Color.fromARGB(255, 146, 14, 14),fontWeight: FontWeight.bold,fontSize: 18) ,),
//               onPressed: () {
//   String c = count.toString();
//                     addToCart(widget.shopdata.name, widget.shopdata.Image,
//                         size, c, widget.shopdata.price);              },
//             ),
//           ],
//         );
//       },
//     );
//   }





















//   static const isFavoriteKey = 'isFavoriteKey';
//   late bool isFavorite = false;
//     var textfieldsString;
//       //var ip = Connection.IP;


  
//    @override
//   void initstate() {
//     super.initState();
//     _restorepersistedPrefrrence();
//   }
// void _restorepersistedPrefrrence() async {



//     var preference = await SharedPreferences.getInstance();

//     var isFavorite = preference.getBool(isFavoriteKey);

//     setState(() => this.isFavorite = isFavorite!);
//   }
//   void _persistedPrefrrence() async {
//     setState(() => this.isFavorite = !isFavorite);
//     var preference = await SharedPreferences.getInstance();
//     preference.setBool(isFavoriteKey, isFavorite);
//   }
//   Future addToFavourite (
//      String item_img, String item_name, String item_price, String item_desc) async {
//     var url =
// 'http://192.168.1.109/connect/add_toFav.php';
//     var response = await http.post(Uri.parse(url), body: {
//      // "id":id.toString(),
//        "item_img": item_img,
//       "item_name": item_name,
//       "item_price": item_price,
//       "item_desc": item_desc,
//       // "item_img": widget.item_img,
//       // "item_name": widget.item_name,
//       // "item_price": widget.item_price,
//       // "item_desc": widget.item_desc,
//     });
//    // print(id.toString());
//     var data = json.decode(response.body);
//     print(data);
   
//   }
// Future DeleteFromFavourite(String item_img) async {
//     var url =
//         'http://192.168.1.109/connect/deletefrom_Fav.php';

//     var response = await http.post(Uri.parse(url), body: {
//       "item_img": item_img,
//     });

//     var data = json.decode(response.body);
//     print(data);
//   }
//  Future addToCart(
//       String item_name, item_img, size, String count, String item_price ) async {
//     var url = 'http://192.168.1.109/connect/shopping_cart/addto_cart.php';

//     var response = await http.post(Uri.parse(url), body: {
//       //"id" : id.toString(),
//       "item_name": item_name,
//       "item_img": item_img,
//       "size": size,
//       "count": count,
//       "item_price": item_price,
//     });

//     var data = json.decode(response.body);
//     print(data);
//   }

//   var size = 'Single meal';
//   int count = 0;

//   final List<String> list = <String>['Single meal', 'family meal'];
//   void add() {
//     setState(() {
//       if (count != 10) count++;
//     });
//   }

//   void minus() {
//     setState(() {
//       if (count != 0) count--;
//     });
//   }

  


// @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             width: double.infinity,
//             child: Image.asset(                    widget.shopdata.Image,
// ),
//           ),
           
//           buttonArrow(context),
//           scroll(),
//         ],



//       ),
//     )
//     );
//   }

//   buttonArrow(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: InkWell(
//         onTap: () {
//           Navigator.pop(context);
//         },
//         child: Container(
//           clipBehavior: Clip.hardEdge,
//           height: 55,
//           width: 55,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(25),
//           ),
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//             child: Container(
//               height: 55,
//               width: 55,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: const Icon(
//                 Icons.arrow_back_ios,
//                 size: 20,
//                 color: Color.fromARGB(255, 146, 14, 14),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   scroll() {
//     return DraggableScrollableSheet(
//         initialChildSize: 0.6,
//         maxChildSize: 1.0,
//         minChildSize: 0.6,
//         builder: (context, scrollController) {
//           return Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             clipBehavior: Clip.hardEdge,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                   topLeft: const Radius.circular(20),
//                   topRight: const Radius.circular(20)),
//             ),
//             child: SingleChildScrollView(
//               controller: scrollController,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10, bottom: 25),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: 5,
//                           width: 35,
//                           color: Colors.black12,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Text(
//                             widget.shopdata.name,
//                     //style: Theme.of(context).textTheme.displayMedium,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                               children: [
//                   RatingBar.builder(
//                           initialRating: 4,
//                           minRating: 1,
//                           direction: Axis.horizontal,
//                           itemCount: 5,
//                           itemSize: 16,
//                           itemPadding: EdgeInsets.symmetric(horizontal: 2),
//                           itemBuilder: ((context, _) => Icon(
//                                 Icons.star_border,
//                                 color: Color.fromARGB(255, 146, 14, 14),
//                               )),
//                           onRatingUpdate: (index) {},
//                         ),


//                    Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 80)),
//                                          Container(
//                                   height: 40,
//                                   width: 40,
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.1),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: Center(
//                                     child: IconButton(
//                                       onPressed: () {
                                        
//                                       },
//                                       icon: Icon(
//                                         Icons.message,
//                                         size: 20,
//                                         color:Color.fromARGB(255, 146, 14, 14),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                   const SizedBox(
//                         width: 5,
//                       ),
//                   Container(
//                                   height: 40,
//                                   width: 40,
//                                   decoration: BoxDecoration(
//                                     color: Colors.black.withOpacity(0.1),
//                                     shape: BoxShape.circle,
                                    
//                                   ),
//                                   child: Center(
//                                     child:
//                        IconButton(
//                           icon: (isFavorite
//                               ? Icon(Icons.favorite)
//                               : Icon(Icons.favorite_border)),
//                           color: Color.fromARGB(255, 146, 14, 14),
//                           iconSize: 15,
//                           onPressed: () => {
//                             if (isFavorite)
//                               {
//                                 // setState(() {
//                                 //   isFavorite = false;
//                                 // }),
//                                 _persistedPrefrrence(),
//                                 DeleteFromFavourite(widget.shopdata.Image)
//                               }
//                             else
//                                {
//                                 // setState(() {
//                                 //   isFavorite = true;
//                                 // }),
//                                 _persistedPrefrrence(),
//                                 addToFavourite(
//                                     widget.shopdata.name,
//                                     widget.shopdata.Image,
//                                      widget.shopdata.price,
//                                     widget.shopdata.desc,
//                                    // widget.id,
                                   
//                               )
//                              // print(widget.id),

//                               }
                              
//                           },
                          
//                         ),),),
//                         ]),
                  
//                   Text(
//                             widget.shopdata.price,
                  
//                   ),
                 
//                    const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 15),
//                     child: Divider(
//                       height: 4,
//                     ),
//                   ),
//                   Text(
//           widget.shopdata.desc,                   // style: Theme.of(context).textTheme.displayLarge,
//                   ),
                  
//                    const SizedBox(
//                         height: 20,
//                       ),
//                   Row(
//                     children: [
//                       InkWell(
//                         onTap: () {
//                           // Navigator.push(
//                           //     context,
//                           //     MaterialPageRoute(
//                           //       builder: (context) =>
//                           //       //  ProfileScreen  (),
//                           //     )
//                           //     );
//                         },

























                        
//                         child: const CircleAvatar(
//                           backgroundColor: Colors.grey,
//                           radius: 25,
//                          // backgroundImage:image.asset( widget.shopdata.logo),
// backgroundImage: AssetImage("lib/images/3.png"),

//                         ),
//                       ),
//                       const SizedBox(
//                         width: 19,
//                       ),

// Row(
//                               children: [
                              

//               Text(
//  widget.shopdata.namepage,                        /*style: Theme.of(context)
//                             .textTheme
//                             .displaySmall!
//                             .copyWith(color: mainText),*/
//                       ), 
//                         const SizedBox(
//                         width: 90,
//                       ),
                    
//                               ],
//                             ),


                      
//                       const SizedBox(
//                         width: 80,
//                       ),
                    
//                       const SizedBox(
//                         width: 5,
//                       ),
                     
//                     ],
//                   ),
                     
                 
//                         const SizedBox(
//                     height: 15,
//                   ),

                  
                  
//                       // Padding(
//                       //   padding: const EdgeInsets.only(
//                       //       right: 24, left: 24, bottom: 1),
//                       //   child: Column(children: <Widget>[
                         
//                       //   ]),
//                       // ),
                      
//                    Padding(
//                         padding: EdgeInsets.symmetric(vertical: 5),
//                         child: Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   'Size:',
//                                   style: TextStyle(
//                                       fontSize: 14,
//                                       color: Colors.black,
//                                       fontFamily: "Mulish-VariableFont",
//                                       fontWeight: FontWeight.bold),
//                                 ),
                                
//                                 Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 15)),
                                        
//                                 DropdownButton<String>(
//                                   value: size,
//                                   icon: const Icon(
//                                     Icons.arrow_downward,
//                                     size: 12,
//                                   ),
//                                   elevation: 10,
//                                   style: const TextStyle(
//                                       fontSize: 13,
//                                       color: Colors.black,
//                                       fontFamily: "Mulish-VariableFont",
//                                       fontWeight: FontWeight.bold),
//                                   underline: Container(
//                                     height: 1,
//                                     color: Colors.black,
//                                   ),
//                                   onChanged: (String? value) {
//                                     // This is called when the user selects an item.
//                                     setState(() {
//                                       size = value!;
//                                     });
//                                   },
//                                   items: list.map<DropdownMenuItem<String>>(
//                                       (String value) {
//                                     return DropdownMenuItem<String>(
//                                       value: value,
//                                       child: Text(value),
//                                     );
//                                   }).toList(),
//                                 ),
// Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 12)),
//                                    Text('Amount: ',
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             color: Colors.black,
//                                             fontFamily: "Mulish-VariableFont",
//                                             fontWeight: FontWeight.bold)),

//                                             FloatingActionButton.small(
//                                       onPressed: add,
//                                       child: Icon(
//                                         Icons.add,
//                                         color: Colors.white,
//                                         size: 12,
//                                       ),
//                                       backgroundColor:
//                                           Color.fromARGB(255, 146, 14, 14),
//                                     ),
//                                        SizedBox(
//                                       width: 6,
//                                     ),
//                                     Text('$count',
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             color: Colors.black,
//                                             fontFamily: "Mulish-VariableFont",
//                                             fontWeight: FontWeight.bold)),
//                                     SizedBox(
//                                       width: 6,
//                                     ),
//                                     FloatingActionButton.small(

                                      
//                                             onPressed: minus,
//                                       child: Text('-',
//                                           style: TextStyle(
//                                               fontSize: 12,
//                                               color: Colors.white,
//                                               fontFamily: "Mulish-VariableFont",
//                                               fontWeight: FontWeight.bold)),
                                              
//                                       backgroundColor:
//                                           Color.fromARGB(255, 146, 14, 14),
//                                     ),
                                            
//                               ],
//                             ),
                           
//                           ],
//                         )),                       
                            
//                   Padding(padding: EdgeInsets.only(bottom: 20)),
//             Row(
//               children: [
//                 Padding(padding: EdgeInsets.only(left: 80,bottom: 90)),
//                 ElevatedButton(
//                   onPressed: () {
//                     _dialogBuilder(context);
                  
//                         },
//                   child: Text(
//                     "Add To Cart",style: TextStyle(fontSize: 16),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                       primary: Color.fromARGB(255, 146, 14, 14),
                      
//                       padding: EdgeInsets.only(top: 0, right: 10, left: 10,),
//                       minimumSize: Size(180.0, 40.0),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(22)),
//                       textStyle: TextStyle(
//                         fontFamily: 'Mulish-VariableFont',
//                         fontSize: 14,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       )),
//                 ),
//               ],
//             )
                 
                  
                
                  
                  
//                 ],
//               ),
//             ),
//           );
//         });
//   }

            
          
        
//   }




import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';
//import 'package:test_homee/constran.dart';
//import 'package:test_homee/profile/profile_screen.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'shopData.dart';



class Itm extends StatefulWidget {
  final data shopdata;
  //final int id;
  const Itm({Key? key, required this.shopdata}) : super(key: key);
  //const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

  @override
  _ItemdetailState createState() => _ItemdetailState();
}

class _ItemdetailState extends State<Itm> {
  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Are You Sure ?',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text(
                'No',
                style: TextStyle(
                    color: Color.fromARGB(255, 146, 14, 14),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text(
                'Yes',
                style: TextStyle(
                    color: Color.fromARGB(255, 146, 14, 14),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              onPressed: () {
                String c = count.toString();
                addToCart(widget.shopdata.name, widget.shopdata.Image, size, c,
                    widget.shopdata.price);
              },
            ),
          ],
        );
      },
    );
  }

  static const isFavoriteKey = 'isFavoriteKey';
  late bool isFavorite = false;
  var textfieldsString;
  //var ip = Connection.IP;

  @override
  void initstate() {
    super.initState();
    _restorepersistedPrefrrence();
  }

  void _restorepersistedPrefrrence() async {
    var preference = await SharedPreferences.getInstance();

    var isFavorite = preference.getBool(isFavoriteKey);

    setState(() => this.isFavorite = isFavorite!);
  }

  void _persistedPrefrrence() async {
    setState(() => this.isFavorite = !isFavorite);
    var preference = await SharedPreferences.getInstance();
    preference.setBool(isFavoriteKey, isFavorite);
  }

  Future addToFavourite(String item_img, String item_name, String item_price,
      String item_desc) async {
    var url = 'http://192.168.1.109/connect/add_toFav.php';
    var response = await http.post(Uri.parse(url), body: {
      // "id":id.toString(),
      "item_img": item_img,
      "item_name": item_name,
      "item_price": item_price,
      "item_desc": item_desc,

      // "item_img": widget.item_img,
      // "item_name": widget.item_name,
      // "item_price": widget.item_price,
      // "item_desc": widget.item_desc,
    });
    // print(id.toString());
    var data = json.decode(response.body);
    print(data);
  }

  Future DeleteFromFavourite(String item_img) async {
    var url = 'http://192.168.1.109/connect/deletefrom_Fav.php';

    var response = await http.post(Uri.parse(url), body: {
      "item_img": item_img,
    });

    var data = json.decode(response.body);
    print(data);
  }

  Future addToCart(
      String item_name, item_img, size, String count, String item_price) async {
    var url = 'http://192.168.1.109/connect/shopping_cart/addto_cart.php';

    var response = await http.post(Uri.parse(url), body: {
      //"id" : id.toString(),
      "item_name": item_name,
      "item_img": item_img,
      "size": size,
      "count": count,
      "item_price": item_price,
    });

    var data = json.decode(response.body);
    print(data);
  }

  var size = 'Single meal';
  int count = 0;

  final List<String> list = <String>['Single meal', 'family meal'];
  void add() {
    setState(() {
      if (count != 10) count++;
    });
  }

  void minus() {
    setState(() {
      if (count != 0) count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              widget.shopdata.Image,
            ),
          ),
          buttonArrow(context),
          scroll(),
        ],
      ),
    ));
  }

  buttonArrow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: Color.fromARGB(255, 146, 14, 14),
              ),
            ),
          ),
        ),
      ),
    );
  }

  scroll() {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, scrollController) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.hardEdge,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 231, 229, 229),
              borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(24),
                  topRight: const Radius.circular(24)),
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          color: Colors.black12,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.shopdata.name,style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        //style: Theme.of(context).textTheme.displayMedium,
                      ),
                      Padding(padding: EdgeInsets.only(left: 215)),
                      //   Spacer(),

                      Text(
                        widget.shopdata.price +" ILS",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2),
                      itemBuilder: ((context, _) => Icon(
                            Icons.star_border,
                            color: Color.fromARGB(255, 146, 14, 14),
                          )),
                      onRatingUpdate: (index) {},
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 70)),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.message,
                            size: 20,
                            color: Color.fromARGB(255, 146, 14, 14),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: IconButton(
                          icon: (isFavorite
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_border)),
                          color: Color.fromARGB(255, 146, 14, 14),
                          iconSize: 20,
                          onPressed: () => {
                            if (isFavorite)
                              {
                                // setState(() {
                                //   isFavorite = false;
                                // }),
                                _persistedPrefrrence(),
                                DeleteFromFavourite(widget.shopdata.Image)
                              }
                            else
                              {
                                // setState(() {
                                //   isFavorite = true;
                                // }),
                                _persistedPrefrrence(),
                                addToFavourite(
                                  widget.shopdata.name,
                                  widget.shopdata.Image,
                                  widget.shopdata.price,
                                  widget.shopdata.desc,
                                  // widget.id,
                                )
                                // print(widget.id),
                              }
                          },
                        ),
                      ),
                    ),
                  ]),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) =>
                          //       //  ProfileScreen  (),
                          //     )
                          //     );
                        },
                        child: const CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 25,
                          // backgroundImage:image.asset( widget.shopdata.logo),
                          backgroundImage: AssetImage("lib/images/3.png"),
                        ),
                      ),
                      const SizedBox(
                        width: 19,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.shopdata
                                .namepage,style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                                 /*style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(color: mainText),*/
                          ),
                          const SizedBox(
                            width: 90,
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 80,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                      height: 4,
                      color: Color.fromARGB(255, 146, 14, 14),
                      thickness: 0.5,
                    ),
                  ),
                  Text("Description : " +
                    widget.shopdata
                        .desc, style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),// style: Theme.of(context).textTheme.displayLarge,
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Ingredients : ",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black), // style: Theme.of(context).textTheme.displayLarge,
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  // Padding(
                  //   padding: const EdgeInsets.only(
                  //       right: 24, left: 24, bottom: 1),
                  //   child: Column(children: <Widget>[

                  //   ]),
                  // ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Size :',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: "Mulish-VariableFont",
                                    fontWeight: FontWeight.bold),
                              ),

                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15)),

                              DropdownButton<String>(
                                value: size,
                                icon: const Icon(
                                  Icons.arrow_downward,
                                  size: 16,
                                ),
                                elevation: 10,
                                style: const TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: "Mulish-VariableFont",
                                    fontWeight: FontWeight.bold),
                                underline: Container(
                                  height: 1,
                                  color: Colors.black,
                                ),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    size = value!;
                                  });
                                },
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 30)),
                              //  Text('Amount: ',
                              //       style: TextStyle(
                              //           fontSize: 14,
                              //           color: Colors.black,
                              //           fontFamily: "Mulish-VariableFont",
                              //           fontWeight: FontWeight.bold)),

                              FloatingActionButton.small(
                                onPressed: add,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 16,
                                ),
                                backgroundColor:
                                    Color.fromARGB(255, 146, 14, 14),
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text('$count',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 6,
                              ),
                              FloatingActionButton.small(
                                onPressed: minus,
                                child: Text('-',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Mulish-VariableFont",
                                        fontWeight: FontWeight.bold)),
                                backgroundColor:
                                    Color.fromARGB(255, 146, 14, 14),
                              ),
                            ],
                          ),
                        ],
                      )),

                  Padding(padding: EdgeInsets.only(bottom: 50)),
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 58,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                                color: Color.fromARGB(255, 146, 14, 14))),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Color.fromARGB(255, 146, 14, 14),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Add to Cart".toUpperCase(),
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 146, 14, 14),
                                // primary: Colors.blue,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18))),

                            // color: product.color,
                          ),
                          //  shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(18)),
                          // color: product.color,
                          // onPressed: () {},
                        ),
                      ),

                      //  Padding(padding: EdgeInsets.only(left: 80,bottom: 90)),
                      //  SizedBox(width: 30,child: defaultbutton(),
                      //  ),
                      // ElevatedButton(
                      //   onPressed: () {
                      //     _dialogBuilder(context);

                      //         },
                      //   child: Text(
                      //     "Add To Cart",style: TextStyle(fontSize: 16),
                      //   ),
                      //   style: ElevatedButton.styleFrom(
                      //       primary: Color.fromARGB(255, 146, 14, 14),

                      //       padding: EdgeInsets.only(top: 0, right: 10, left: 10,),
                      //       minimumSize: Size(180.0, 40.0),
                      //       shape: RoundedRectangleBorder(
                      //           borderRadius: BorderRadius.circular(22)),
                      //       textStyle: TextStyle(
                      //         fontFamily: 'Mulish-VariableFont',
                      //         fontSize: 14,
                      //         color: Colors.white,
                      //         fontWeight: FontWeight.bold,
                      //       )),

                      // ),
                      //     FloatingActionButton.small(
                      //                       onPressed: add,
                      //                       child: const Icon(
                      //                         Icons.add,
                      //                         color: Colors.white,
                      //                         size: 12,
                      //                       ),
                      //                       backgroundColor:
                      //                           Color.fromARGB(255, 146, 14, 14),
                      //                     ),
                      //                        SizedBox(
                      //                       width: 6,
                      //                     ),
                      //                     Text('$count',
                      //                         style: const TextStyle(
                      //                             fontSize: 14,
                      //                             color: Colors.black,
                      //                             fontFamily: "Mulish-VariableFont",
                      //                             fontWeight: FontWeight.bold)),
                      //                     const SizedBox(
                      //                       width: 6,
                      //                     ),
                      //                     FloatingActionButton.small(

                      //                             onPressed: minus,
                      //                       child: const Text('-',
                      //                           style: TextStyle(
                      //                               fontSize: 12,
                      //                               color: Colors.white,
                      //                               fontFamily: "Mulish-VariableFont",
                      //                               fontWeight: FontWeight.bold)),

                      //                       backgroundColor:
                      //                           Color.fromARGB(255, 146, 14, 14),
                      //                     ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  defaultbutton() {}
}
    