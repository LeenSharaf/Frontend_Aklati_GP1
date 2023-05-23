// // import 'dart:ui';

// // import 'package:flutter/material.dart';
// // import 'package:test_homee/constran.dart';
// // import 'package:test_homee/profile/profile_screen.dart';

// // import 'shopData.dart';


// // class Itemdetail extends StatefulWidget {
// //   final Shopdata shopdata;
// //   const Itemdetail({Key? key, required this.shopdata}) : super(key: key);
// //   //const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

// //   @override
// //   _ItemdetailState createState() => _ItemdetailState();
// // }

// // class _ItemdetailState extends State<Itemdetail> {
// //   var dropdownValue = 'Small';
// //   int _n = 0;

// //   //final List<String> list = <String>['Small', 'Med', 'Larg', 'Xlarg'];
// //   void add() {
// //     setState(() {
// //       if (_n != 10) _n++;
// //     });
// //   }

// //   void minus() {
// //     setState(() {
// //       if (_n != 0) _n--;
// //     });
// //   }

  


// // @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //         child: Scaffold(
// //       body: Stack(
// //         children: [
// //           SizedBox(
// //             width: double.infinity,
// //             child: Image.asset(                    widget.shopdata.Image,
// // ),
// //           ),
// //            /*Hero(
// //               tag: "Image",
// //               child: Image.asset( widget.shopdata.Image,
// //               height: 150.0,
// //               width: 100.0,
// //               fit: BoxFit.contain
// //               )
// //             ),*/
// //           buttonArrow(context),
// //           scroll(),
// //         ],



// //       ),
// //     )
// //     );
// //   }

// //   buttonArrow(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(20.0),
// //       child: InkWell(
// //         onTap: () {
// //           Navigator.pop(context);
// //         },
// //         child: Container(
// //           clipBehavior: Clip.hardEdge,
// //           height: 55,
// //           width: 55,
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(25),
// //           ),
// //           child: BackdropFilter(
// //             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
// //             child: Container(
// //               height: 55,
// //               width: 55,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.circular(25),
// //               ),
// //               child: const Icon(
// //                 Icons.arrow_back_ios,
// //                 size: 20,
// //                 color: Colors.white,
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   scroll() {
// //     return DraggableScrollableSheet(
// //         initialChildSize: 0.6,
// //         maxChildSize: 1.0,
// //         minChildSize: 0.6,
// //         builder: (context, scrollController) {
// //           return Container(
// //             padding: const EdgeInsets.symmetric(horizontal: 20),
// //             clipBehavior: Clip.hardEdge,
// //             decoration: const BoxDecoration(
// //               color: Colors.white,
// //               borderRadius: BorderRadius.only(
// //                   topLeft: const Radius.circular(20),
// //                   topRight: const Radius.circular(20)),
// //             ),
// //             child: SingleChildScrollView(
// //               controller: scrollController,
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   Padding(
// //                     padding: const EdgeInsets.only(top: 10, bottom: 25),
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.center,
// //                       children: [
// //                         Container(
// //                           height: 5,
// //                           width: 35,
// //                           color: Colors.black12,
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                   Text(
// //                             widget.shopdata.name,
// //                     //style: Theme.of(context).textTheme.displayMedium,
// //                   ),
// //                   const SizedBox(
// //                     height: 10,
// //                   ),
// //                   Text(
// //                             widget.shopdata.price,
// //                    /* style: Theme.of(context)
// //                         .textTheme
// //                         .bodyMedium!
// //                         .copyWith(color: SecondaryText),*/
// //                   ),
// //                   const SizedBox(
// //                     height: 15,
// //                   ),
// //                   Row(
// //                     children: [
// //                       InkWell(
// //                         onTap: () {
// //                           Navigator.push(
// //                               context,
// //                               MaterialPageRoute(
// //                                 builder: (context) =>
// //                                   ProfileScreen  (),
// //                               ));
// //                         },
// //                         child: const CircleAvatar(
// //                           backgroundColor: Colors.white,
// //                           radius: 25,
// //                          // backgroundImage:image.asset( widget.shopdata.logo),
// // backgroundImage: AssetImage("lib/images/3.png"),

// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         width: 10,
// //                       ),
// //                       Text(
// // widget.shopdata.namepage,                        /*style: Theme.of(context)
// //                             .textTheme
// //                             .displaySmall!
// //                             .copyWith(color: mainText),*/
// //                       ),
// //                       const Spacer(),
// //                       const CircleAvatar(
// //                         radius: 20,
// //                         //backgroundColor: primary,
// //                         child: Icon(
// //                           Icons.favorite,
// //                           color: Color.fromARGB(255, 230, 140, 140),
// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         width: 5,
// //                       ),
                     
// //                     ],
// //                   ),
// //                   const Padding(
// //                     padding: EdgeInsets.symmetric(vertical: 15),
// //                     child: Divider(
// //                       height: 4,
// //                     ),
// //                   ),
// //                   Text(
// // widget.shopdata.desc,                   // style: Theme.of(context).textTheme.displayLarge,
// //                   ),
// //                   const SizedBox(
// //                     height: 10,
// //                   ),
// //                   Text(
// //                     'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
// //                    /* style: Theme.of(context)
// //                         .textTheme
// //                         .bodyMedium!
// //                         .copyWith(color: SecondaryText),*/
// //                   ),
// //                   const Padding(
// //                     padding: EdgeInsets.symmetric(vertical: 15),
// //                     child: Divider(
// //                       height: 4,
// //                     ),
// //                   ),


// //                    Container(
// //                               child: Center(
// //                                 child: Row(
// //                                   children: <Widget>[
// //                                     Text('Amount: ',
// //                                         style: TextStyle(
// //                                             fontSize: 12,
// //                                             color: Colors.black,
// //                                             fontFamily: "Mulish-VariableFont",
// //                                             fontWeight: FontWeight.bold)),
// //                                     SizedBox(
// //                                       width: 10,
// //                                     ),
// //                                     FloatingActionButton.small(
// //                                       onPressed: add,
// //                                       child: Icon(
// //                                         Icons.add,
// //                                         color: Colors.black,
// //                                         size: 10,
// //                                       ),
// //                                       backgroundColor:
// //                                           Color.fromARGB(255, 241, 241, 241),
// //                                     ),
// //                                     SizedBox(
// //                                       width: 10,
// //                                     ),
// //                                     Text('$_n',
// //                                         style: TextStyle(
// //                                             fontSize: 14,
// //                                             color: Colors.black,
// //                                            // fontFamily: "Mulish-VariableFont",
// //                                             fontWeight: FontWeight.bold)),
// //                                     SizedBox(
// //                                       width: 10,
// //                                     ),
// //                                     FloatingActionButton.small(
// //                                       onPressed: minus,
// //                                       child: Text('-',
// //                                           style: TextStyle(
// //                                               fontSize: 10,
// //                                               color: Colors.black,
// //                                               fontFamily: "Mulish-VariableFont",
// //                                               fontWeight: FontWeight.bold)),
// //                                       backgroundColor:
// //                                           Color.fromARGB(255, 241, 241, 241),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
                            
// //                   Padding(padding: EdgeInsets.only(bottom: 20)),
// //             Row(
// //               children: [
// //                 Padding(padding: EdgeInsets.only(left: 20)),
// //                 ElevatedButton(
// //                   onPressed: () {},
// //                   child: Text(
// //                     "Add this to cart",
// //                   ),
// //                   style: ElevatedButton.styleFrom(
// //                       primary: Colors.red,
// //                       padding: EdgeInsets.only(top: 10, right: 10, left: 10),
// //                       minimumSize: Size(180.0, 40.0),
// //                       shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(25)),
// //                       textStyle: TextStyle(
// //                         fontFamily: 'Mulish-VariableFont',
// //                         fontSize: 14,
// //                         color: Colors.white,
// //                         fontWeight: FontWeight.bold,
// //                       )),
// //                 ),
// //               ],
// //             )
                 
                  
                
                  
                  
// //                 ],
// //               ),
// //             ),
// //           );
// //         });
// //   }

            
          
        
// //   }







// //ال اد للكارت خربانة

// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:test_homee/Shop/icon_bt.dart';
// import 'package:test_homee/constran.dart';
// import 'shopData.dart';


// class Itemdetail extends StatelessWidget {
//     final data shopdata;
//       final String username;

    
//      // var namepage;

//   const Itemdetail({Key? key , required this.shopdata,required this.username ,}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             width: double.infinity,
//             child: Image.asset( shopdata.Image,),
            
//           ),
          
//           buttonArrow(context),
//           scroll(),
//         ],
//       ),
//     ));
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
//                 color: Colors.white,
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
//                   Row(children: [
//  Text(
// shopdata.name                    //style: Theme.of(context).textTheme.displayMedium,
//                   ),
//                                         const Spacer(),

                  
//                   Text(
// shopdata.price                   /* style: Theme.of(context)
//                         .textTheme
//                         .bodyMedium!
//                         .copyWith(color: SecondaryText),*/
//                   ),
                  
//                   ],),

//                   const SizedBox(
//                     height: 15,
//                   ),
//                  RatingBar.builder(
//                           initialRating: 4,
//                           minRating: 1,
//                           direction: Axis.horizontal,
//                           itemCount: 5,
//                           itemSize: 16,
//                           itemPadding: EdgeInsets.symmetric(horizontal: 2),
//                           itemBuilder: ((context, _) => Icon(
//                                 Icons.star_border,
//                                 color: Colors.red,
//                               )),
//                           onRatingUpdate: (index) {},
//                         ),
//                         const SizedBox(
//                     height: 15,
//                   ),
//                   Row(
                  
                      
//                       children: [
                        
//                       InkWell(
//                         onTap: () {
//                         //  Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(
//                         //         builder: (context) =>
//                         //             user1(),
//                         //       ));
//                         },
//                         child: const CircleAvatar(
//                           backgroundColor: Colors.white,
//                           radius: 25,
//                           backgroundImage: AssetImage("lib/images/3.png"),

//                         ),
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),

// Row(
//                               children: [
// //                                 Text(
// // shopdata.namepage                        /*style: Theme.of(context)
// //                             .textTheme
// //                             .displaySmall!
// //                             .copyWith(color: mainText),*/
// //                       ),
//                                 Container(
//                                   height: 50,
//                                   width: 50,
                                  
//                                   child: Center(
//                                     child: IconButton(
//                                       onPressed: () {
                                        
//                                       },
//                                       icon: Icon(
//                                         Icons.phone,
//                                         size: 20,
//                                         color: Colors.yellow[700],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(
//                                   width: 16,
//                                 ),
//                                 Container(
//                                   height: 50,
//                                   width: 50,
//                                   decoration: BoxDecoration(
//                                     color: Colors.yellow[700]!.withOpacity(0.1),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: Center(
//                                     child: IconButton(
//                                       onPressed: () {
                                        
//                                       },
//                                       icon: Icon(
//                                         Icons.message,
//                                         size: 20,
//                                         color: Colors.yellow[700],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),














                      
                      
//                       const Spacer(),
//                       const CircleAvatar(
//                         radius: 25,
//                         backgroundColor: kPrimaryColor,
//                         child: Icon(
// Icons.favorite,
//                           color: Colors.white,
//                         ),
//                       ),
                      
//                       const SizedBox(
//                         width: 5,
//                       ),
//                      /* Text(
//                         "273 Likes",
//                         /*style: Theme.of(context)
//                             .textTheme
//                             .displaySmall!
//                             .copyWith(color: mainText),*/
//                       ),*/
//                     ],
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 15),
//                     child: Divider(
//                       height: 4,
//                     ),
//                   ),
//                   Text(
// shopdata.desc                   // style: Theme.of(context).textTheme.displayLarge,
//                   ),
                 
                  
//                   const SizedBox(
//                         height: 20,
//                       ),
//                   Padding(padding: const EdgeInsets.all(0.8),
//                   child: Text(
// "Add your Comments",
// style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),
//                   ),),
//                    SizedBox(
//                         height: 10,
//                       ),
//                   Container(
//                     child: Column(children:<Widget>[
//                       Padding(padding: const EdgeInsets.all(0.8),
                      
//                   child: TextField(
                 
// decoration: InputDecoration(labelText: 'Enter comment'),
//                   ),),

//                     ]),
//                   ),
//                    SizedBox(
//                         height: 10,
//                       ),
//                   Container(
//                               child: Center(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text('Amount: ',
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             color: Colors.black,
//                                             fontFamily: "Mulish-VariableFont",
//                                             fontWeight: FontWeight.bold)),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     /*FloatingActionButton.small(
//                                       onPressed: add,
//                                       child: Icon(
//                                         Icons.add,
//                                         color: Colors.black,
//                                         size: 10,
//                                       ),
//                                       backgroundColor:
//                                           Color.fromARGB(255, 241, 241, 241),
//                                     ),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     /*Text('$_n',
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             color: Colors.black,
//                                            // fontFamily: "Mulish-VariableFont",
//                                             fontWeight: FontWeight.bold)),*/
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     FloatingActionButton.small(
//                                       onPressed: minus,
//                                       child: Text('-',
//                                           style: TextStyle(
//                                               fontSize: 10,
//                                               color: Colors.black,
//                                               fontFamily: "Mulish-VariableFont",
//                                               fontWeight: FontWeight.bold)),
//                                       backgroundColor:
//                                           Color.fromARGB(255, 241, 241, 241),
//                                     ),*/
//                                   ],
//                                 ),
//                               ),
//                             ),
                            
//                   Padding(padding: EdgeInsets.only(bottom: 20)),
//             Row(
//               children: [
//                 RoundedIconBtn(
//             icon: Icons.remove,
//             showShadow: true,

//             press: () {},
//           ),
//           RoundedIconBtn(
//             icon: Icons.add,
//             showShadow: true,
//             press: () {},
//           ),
//                 Padding(padding: EdgeInsets.only(left: 20)),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Add this to cart",
//                   ),
//                   style: ElevatedButton.styleFrom(
//                       primary: Colors.red,
//                       padding: EdgeInsets.only(top: 10, right: 10, left: 10),
//                       minimumSize: Size(180.0, 40.0),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(25)),
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
  



// //////////بدي اجرب كود رنا



// /*import 'package:clippy_flutter/arc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:test_homee/main_home.dart';

// import '../constran.dart';
// import 'shop.dart';
// import 'shopData.dart';

// class Itemdetail extends StatefulWidget {
//   final Shopdata shopdata;
//   const Itemdetail({Key? key, required this.shopdata}) : super(key: key);
//   //const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

//   @override
//   _ItemdetailState createState() => _ItemdetailState();
// }

// class _ItemdetailState extends State<Itemdetail> {
//   var dropdownValue = 'Small';
//   int _n = 0;

//   final List<String> list = <String>['Small', 'Med', 'Larg', 'Xlarg'];
//   void add() {
//     setState(() {
//       if (_n != 10) _n++;
//     });
//   }

//   void minus() {
//     setState(() {
//       if (_n != 0) _n--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "Product",
//             style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 15,
//                 fontFamily: "Mulish-VariableFont"),
//           ),
//           centerTitle: true,
//           backgroundColor: Color.fromARGB(255, 20, 51, 0),
//           leading: IconButton(
//             onPressed: () => {
//               Navigator.of(context)
//                   .push(MaterialPageRoute(builder: (context) => Home()))
//             },
//             icon: Icon(
//               Icons.arrow_back_ios_new_outlined,
//               size: 15,
//             ),
//           ),
//         ),
//         body: Padding(
//           padding: EdgeInsets.only(top: 5),
//           child: ListView(children: [
//             Padding(
//                 padding: EdgeInsets.all(12),
//                 child: Material(
//                   // color: Color.fromARGB(255, 241, 241, 241),
//                   //elevation: 2,
//                   borderRadius: BorderRadius.circular(90),
//                   clipBehavior: Clip.antiAliasWithSaveLayer,
//                   child: Image.asset(
//                     widget.shopdata.Image,
//                     //height: 300,
//                     width: double.infinity,
//                   ),
//                 )),
//             Arc(
//               edge: Edge.TOP,
//               arcType: ArcType.CONVEY,
//               height: 30,
//               child: Container(
//                 width: double.infinity,
//                 color: Color.fromARGB(255, 241, 241, 241),
//                 child: Padding(
//                   padding: EdgeInsets.only(top: 50, left: 15, bottom: 15),
//                   child: Column(children: [
//                     Row(
//                       children: [
//                         RatingBar.builder(
//                           initialRating: 4,
//                           minRating: 1,
//                           direction: Axis.horizontal,
//                           itemCount: 5,
//                           itemSize: 16,
//                           itemPadding: EdgeInsets.symmetric(horizontal: 2),
//                           itemBuilder: ((context, _) => Icon(
//                                 Icons.star_border,
//                                 color: Colors.red,
//                               )),
//                           onRatingUpdate: (index) {},
//                         ),

                        
//                         Padding(
//                           padding: EdgeInsets.only(left: 50, right: 15),
//                           child: Text(
//                             widget.shopdata.name                   
//                           ),
                          
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 50, right: 15),
//                           child: Text(
//                             widget.shopdata.price                   
//                           ),
                          
//                         )
//                       ],
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(top: 30, bottom: 20),
//                       child: Column(
//                         children: [
//                           Row(
//                             children: [
//                       InkWell(
//                         onTap: () {
//                          /* Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     ProfileTap(showFollowBottomInProfile: true),
//                               ));*/
//                         },
//                         child: const CircleAvatar(
//                           backgroundColor: Colors.white,
//                           radius: 25,
//                           backgroundImage:
//                               AssetImage("lib/images/3.png"),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                           widget.shopdata.namepage                        /*style: Theme.of(context)
//                             .textTheme
//                             .displaySmall!
//                             .copyWith(color: mainText),*/
//                       ),
//                       const Spacer(),
//                       const CircleAvatar(
//                         radius: 25,
//                         backgroundColor: kPrimaryColor,
//                         child: Icon(
// Icons.favorite,
//                           color: Colors.white,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 5,
//                       ),
//                       Text(
//                         "273 Likes",
//                         /*style: Theme.of(context)
//                             .textTheme
//                             .displaySmall!
//                             .copyWith(color: mainText),*/
//                       ),
//                     ],
//                           ),
//                           Row(
//                             children: [
//                               Padding(
//                                 padding: EdgeInsets.symmetric(vertical: 10),
//                                 child: Text(
//                                   widget.shopdata.desc,
//                                   //textAlign: TextAlign.start,
//                                   style: TextStyle(
//                                       fontSize: 12,
//                                       color: Colors.black,
//                                       fontFamily: "Mulish-VariableFont",
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                               ),
//                             ],
//                           ),


// const SizedBox(
//                         height: 20,
//                       ),
//                   Padding(padding: const EdgeInsets.all(0.8),
//                   child: Text(
// "Add your Comments",
// style: TextStyle(fontSize: 15 , fontWeight: FontWeight.bold),
//                   ),),
//                    SizedBox(
//                         height: 10,
//                       ),
//                   Container(
//                     child: Column(children:<Widget>[
//                       Padding(padding: const EdgeInsets.all(0.8),
                      
//                   child: TextField(
                 
// decoration: InputDecoration(labelText: 'Enter comment'),
//                   ),),

//                     ]),
//                   ),



//                         ],
//                       ),
//                     ),
//                     Padding(
//                         padding: EdgeInsets.symmetric(vertical: 5),
//                         child: Column(
//                           children: [
//                             Row(
//                               children: [
//                                 Text(
//                                   'Size',
//                                   style: TextStyle(
//                                       fontSize: 13,
//                                       color: Colors.black,
//                                       fontFamily: "Mulish-VariableFont",
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 Padding(
//                                     padding:
//                                         EdgeInsets.symmetric(horizontal: 20)),
//                                 DropdownButton<String>(
//                                   value: dropdownValue,
//                                   icon: const Icon(
//                                     Icons.arrow_downward,
//                                     size: 10,
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
//                                       dropdownValue = value!;
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
//                               ],
//                             ),
//                             Container(
//                               child: Center(
//                                 child: Row(
//                                   children: <Widget>[
//                                     Text('Amount: ',
//                                         style: TextStyle(
//                                             fontSize: 12,
//                                             color: Colors.black,
//                                             fontFamily: "Mulish-VariableFont",
//                                             fontWeight: FontWeight.bold)),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     FloatingActionButton.small(
//                                       onPressed: add,
//                                       child: Icon(
//                                         Icons.add,
//                                         color: Colors.black,
//                                         size: 10,
//                                       ),
//                                       backgroundColor:
//                                           Color.fromARGB(255, 241, 241, 241),
//                                     ),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     Text('$_n',
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             color: Colors.black,
//                                             fontFamily: "Mulish-VariableFont",
//                                             fontWeight: FontWeight.bold)),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     FloatingActionButton.small(
//                                       onPressed: minus,
//                                       child: Text('-',
//                                           style: TextStyle(
//                                               fontSize: 10,
//                                               color: Colors.black,
//                                               fontFamily: "Mulish-VariableFont",
//                                               fontWeight: FontWeight.bold)),
//                                       backgroundColor:
//                                           Color.fromARGB(255, 241, 241, 241),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ],
//                         )),
//                   ]),
//                 ),
//               ),
//             ),
//             Padding(padding: EdgeInsets.only(bottom: 20)),
//             Row(
//               children: [
//                 Padding(padding: EdgeInsets.only(left: 20)),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text(
//                     "Add this to cart",
//                   ),
//                   style: ElevatedButton.styleFrom(
//                       primary: Color.fromARGB(255, 20, 51, 0),
//                       padding: EdgeInsets.only(top: 10, right: 10, left: 10),
//                       minimumSize: Size(180.0, 40.0),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(25)),
//                       textStyle: TextStyle(
//                         fontFamily: 'Mulish-VariableFont',
//                         fontSize: 14,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       )),
//                 ),
//               ],
//             )
//           ]),
//         ) 
//         );
//   }
// }
// */