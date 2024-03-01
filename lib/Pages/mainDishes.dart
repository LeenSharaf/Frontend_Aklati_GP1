
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'package:roaa/models/Admin.dart';
import 'package:roaa/providers/AppProvider.dart';

import '../Shop/itemDetail.dart';
import '../Shop/shopData.dart';
import '../Shop/testfordetail.dart';
import '../constran.dart';
import '../main_home.dart';

class popular extends StatefulWidget {
  final String username;
  final String page;
  const popular({
    Key? key,
    required this.username,
    required this.page,
  }) : super(key: key);

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
    return Consumer<AppProvider>(
      builder: (context,provider,x) {
        return Scaffold(
            body: ListView(children: [
          AppBar(
              title: Text(
                widget.page,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: "Mulish-VariableFont"),
              ),
              centerTitle: true,
              backgroundColor: kPrimaryColor,
              leading: IconButton(
                onPressed: ()  {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 15,
                ),
              ),
              ),
          Container(
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 243, 243),
              ),
              child: Column(children: [
                // Container(
                //   margin: EdgeInsets.symmetric(horizontal: 15),
                //   padding: EdgeInsets.symmetric(horizontal: 15),
                //   height: 50,
                //   decoration: BoxDecoration(
                //       //color: Colors.white,
                //       borderRadius: BorderRadius.circular(30)),
                  
                // ),
               
                GridView.builder(
                  itemCount: provider.items.where((element) => element.admin?.id==widget.username).toList().length,
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
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Itm(
                                        shopdata: provider.items.where((element) => element.admin?.id==widget.username).toList()[index]

                                          //username: widget.username,
                                      )));
                            },
                            child: Container(
                                margin: EdgeInsets.all(5),
                                child: Image.network(
                                  provider.items.where((element) => element.admin?.id==widget.username).toList()[index].img,
                                  height: 120,
                                  width: 120,
                                )),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 5),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              provider.items.where((element) => element.admin?.id==widget.username).toList()[index].name,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontFamily: "Mulish-VariableFont",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          // Container(
                          //   alignment: Alignment.centerLeft,
                          //   child: Text(
                          //     provider.items.where((element) => element.admin?.id==widget.username).toList()[index].description,
                          //     style: TextStyle(
                          //         fontSize: 8,
                          //         color: Colors.black,
                          //         fontFamily: "Mulish-VariableFont",
                          //         fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 7),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(provider.items.where((element) => element.admin?.id==widget.username).toList()[index].price.toString() + "\$",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontFamily: "Mulish-VariableFont",
                                        fontWeight: FontWeight.bold)),

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
                          )
                        ],
                      ),
                    ),
                  ),
                
              ]))
        ]));
      }
    );
  }
}
