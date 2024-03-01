// ignore_for_file: prefer_const_constructors, unused_import, non_constant_identifier_names, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';
import '../Shop/shopData.dart';
import '../Shop/testfordetail.dart';


import 'package:http/http.dart' as http;
import '../constran.dart';

class Favourite extends StatefulWidget {

  const Favourite({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api, no_logic_in_create_state
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  // final int id;
  // _FavouriteState({required this.id});

  void initState() {
    super.initState();
    getData();
    // _restorepersistedPrefrrence();
  }

  
  getData() async {
    var url =
        'http://172.19.215.243/connect/getfrom_Fav.php';

    var response = await http.post(Uri.parse(url), body: {
     // "id": widget.id.toString(),
      
    });

    setState(() {
    });

    return ;
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
    return Consumer<AppProvider>(
      builder: (context,provider,x) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Favourite Page",
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
            itemCount: provider.items.where((element) => element.isLiked).toList().length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                leading:
                    Image.network(provider.items.where((element) => element.isLiked).toList()[index].img, height: 80, width: 80),
                title: Row(
                  children: [
                    Text(
                      provider.items.where((element) => element.isLiked).toList()[index].name,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: "Mulish-VariableFont",
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        icon: Icon(Icons.favorite, color: Colors.red, size: 15),
                        onPressed: () => {
                          provider.disLikeItem(provider.items.where((element) => element.isLiked).toList()[index].id!)
                            })
                  ],
                ),
                subtitle: Text(
                  provider.items.where((element) => element.isLiked).toList()[index].discount.toString(),
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: "Mulish-VariableFont",
                      fontWeight: FontWeight.bold),
                ),
                trailing: Text(provider.items.where((element) => element.isLiked).toList()[index].price.toString() + "\₪",
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
    );
  }
}
