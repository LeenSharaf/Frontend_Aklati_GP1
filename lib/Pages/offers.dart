// // ignore_for_file: prefer_const_constructors, unused_import, non_constant_identifier_names, avoid_print

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:test_homee/Shop/shopData.dart';
// import 'package:test_homee/Shop/testfordetail.dart';


// import 'package:http/http.dart' as http;
// import 'package:test_homee/constran.dart';

// class Offers extends StatefulWidget {
//   const Offers({Key? key}) : super(key: key);

//   @override
// // ignore: library_private_types_in_public_api, no_logic_in_create_state
//   _FavouriteState createState() => _FavouriteState();
// }

// class _FavouriteState extends State<Offers> {
//   // final int id;
//   // _FavouriteState({required this.id});

  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Offers Page",
//           style:
//               TextStyle(color: Colors.white, fontFamily: "Mulish-VariableFont"),
//         ),
//         backgroundColor: kPrimaryColor,
//         centerTitle: true,
//       ),
//       // body: ListView.separated(
//       //   separatorBuilder: (BuildContext context, int index) {
//       //     return SizedBox(
//       //       height: 5,
//       //     );
//       //   },
//       //   scrollDirection: Axis.vertical,
//       //   itemCount: shopdata.length,
//       //   itemBuilder: (context, index) {
//       //     return Card(
//       //         child: ListTile(
//       //       leading:
//       //           Image.asset(shopdata[index]['item_img'], height: 80, width: 80),
//       //       title: Row(
//       //         children: [
//       //           Text(
//       //             shopdata[index]['item_name'],
//       //             style: TextStyle(
//       //                 fontSize: 15,
//       //                 color: Colors.black,
//       //                 fontFamily: "Mulish-VariableFont",
//       //                 fontWeight: FontWeight.bold),
//       //           ),
//       //           IconButton(
//       //               icon: Icon(Icons.favorite, color: Colors.red, size: 15),
//       //               onPressed: () => {
//       //                     DeleteFromFavourite(shopdata[index]['item_img']),
//       //                   })
//       //         ],
//       //       ),
//       //       subtitle: Text(
//       //         shopdata[index]['item_desc'],
//       //         style: TextStyle(
//       //             fontSize: 12,
//       //             color: Colors.black,
//       //             fontFamily: "Mulish-VariableFont",
//       //             fontWeight: FontWeight.bold),
//       //       ),
//       //       trailing: Text(shopdata[index]['item_price'] + "\$",
//       //           style: TextStyle(
//       //               fontSize: 13,
//       //               color: Colors.black,
//       //               fontFamily: "Mulish-VariableFont",
//       //               fontWeight: FontWeight.bold)),
//       //     ));
//       //   },
//       // ),
//     );
//   }
// }




// ignore_for_file: prefer_const_constructors, unused_import, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test_homee/Shop/shopData.dart';
import 'package:test_homee/Shop/testfordetail.dart';


import 'package:http/http.dart' as http;
import 'package:test_homee/constran.dart';

class Offers extends StatefulWidget {

  const Offers({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api, no_logic_in_create_state
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Offers> {
  // final int id;
  // _FavouriteState({required this.id});

  void initState() {
    super.initState();
    getData();
    // _restorepersistedPrefrrence();
  }

  var shopdata = [];
  getData() async {
    var url =
        'http://172.19.215.243/connect/getfrom_Fav.php';

    var response = await http.post(Uri.parse(url), body: {
     // "id": widget.id.toString(),
      
    });

    setState(() {
      shopdata = json.decode(response.body);
    });

    print(shopdata);
    return shopdata;
  }

  Future DeleteFromFavourite(String item_img) async {
    var url =
        'http://192.168.1.109/connect/deletefrom_Fav.php';

    var response = await http.post(Uri.parse(url), body: {
      "item_img": item_img,
    });

    var data = json.decode(response.body);
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Offers",
          style:
              TextStyle(color: Colors.white, fontFamily: "Mulish-VariableFont"),
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 5,
          );
        },
        scrollDirection: Axis.vertical,
        itemCount: shopdata.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            leading:
                Image.asset(shopdata[index]['item_img'], height: 80, width: 80),
            title: Row(
              children: [
                Text(
                  shopdata[index]['item_name'],
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: "Mulish-VariableFont",
                      fontWeight: FontWeight.bold),
                ),
                // IconButton(
                //     icon: Icon(Icons.favorite, color: Colors.red, size: 15),
                //     onPressed: () => {
                //           DeleteFromFavourite(shopdata[index]['item_img']),
                //         })
              ],
            ),
            subtitle: Text(
              shopdata[index]['item_desc'],
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontFamily: "Mulish-VariableFont",
                  fontWeight: FontWeight.bold),
            ),

            trailing: Text(shopdata[index]['item_price'] + "\$",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontFamily: "Mulish-VariableFont",
                    fontWeight: FontWeight.bold)),
          ));
        },
      ),
    );
  }
}

