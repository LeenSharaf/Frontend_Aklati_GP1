// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:roaa/profile/AdminEditProfile.dart';
// import 'package:roaa/profile/user_info.dart';

// import '../constran.dart';
// import '../providers/AppProvider.dart';
// import 'menufor_profile.dart';

// class AdminProfile extends StatelessWidget {
// const AdminProfile({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//       backgroundColor: kPrimaryColor,
//       elevation: 0,
// leading: IconButton(
//         icon: Icon(Icons.arrow_back),
//         color: Colors.white,
//         onPressed: ()  {
//               Navigator.of(context).pop();
//             },
//       ),      // On Android it's false by default
//       centerTitle: true,
//       title: Text("Profile"),
//       actions: <Widget>[
//        ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             backgroundColor: kPrimaryColor,
//           ),
//           onPressed: () {
//             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AdminEditProfile()));
//           },
//           child: Text(
//             "Edit",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 16, //16
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ],
//     ),
//     body: Consumer<AppProvider>(
//       builder: (context,provider,c) {
//         return SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//                Info(
//                image: provider.adminInfo.logo,
//                 name: provider.adminInfo.fullName,
//                 email: provider.adminInfo.mobile,
//               ),
//               SizedBox(height: 20), //20
//               ProfileMenuItem(
//                 iconSrc: "lib/icons/add_to_cart.svg",
//                 title: "shopping cart",
//                 press: () {}, 
//               ),
//               ProfileMenuItem(
//                 iconSrc: "lib/icons/heart_fill.svg",
//                 title: "Favorite Page",
//                 press: () {},
//               ),
//               ProfileMenuItem(
//                 iconSrc: "lib/icons/bookmark_fill.svg",
//                 title: "About Us",
//                 press: () {},
//               ),
//               ProfileMenuItem(
//                 iconSrc: "lib/icons/info.svg",
//                 title: "Help",
//                 press: () {},
//               ),
//             ],
//           ),
//         );
//       }
//     ),
//     );
//   }
// }