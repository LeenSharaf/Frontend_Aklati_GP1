// ignore_for_file: prefer_const_constructors, prefer_final_fields, depend_on_referenced_packages, use_build_context_synchronously, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;
import 'package:mailer/mailer.dart';
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constran.dart';


class editOrder extends StatefulWidget {
 // final String total, orderdetail;
  const editOrder({Key? key})
      : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<editOrder> {
  // bool _showPassword = true;

  // TextEditingController username = TextEditingController();
  // TextEditingController address = TextEditingController();
  // TextEditingController IDCard = TextEditingController();
  // TextEditingController phone = TextEditingController();

  // String orderdetail = '';
  // String total = '';
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   orderdetail = widget.orderdetail;
  //   //print(orderdetail);
  //   total = widget.total;
  // }

  // var ip = Connection.IP;
  // Future order_now(String username, address, phone, total, orderdetail) async {
  //   var url = 'http://$ip:8080/wecare_backend/shopping_cart/order.php';

  //   var response = await http.post(Uri.parse(url), body: {
  //     "username": username,
  //     "address": address,
  //     "phone": phone,
  //     "total": total,
  //     "orderdetail": orderdetail,
  //   });

  //   var data = json.decode(response.body);
  //   if (data == "Success") {
  //     Fluttertoast.showToast(
  //         msg: "Done !",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.BOTTOM,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.green,
  //         textColor: Colors.white,
  //         fontSize: 12.0);

  //     Navigator.of(context).push(
  //         MaterialPageRoute(builder: (context) => Shop(username: username)));
  //   } else {
  //     Fluttertoast.showToast(
  //         msg: "some Error",
  //         toastLength: Toast.LENGTH_SHORT,
  //         gravity: ToastGravity.BOTTOM,
  //         timeInSecForIosWeb: 1,
  //         backgroundColor: Colors.red,
  //         textColor: Colors.white,
  //         fontSize: 12.0);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context,provider,c) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
            title: Text("Edit Information",
                style: TextStyle(
                    color: Color.fromARGB(255, 146, 14, 14), fontSize: 20)),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 1,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 146, 14, 14),
              ),
              onPressed: () {
                          Navigator.pop(context);

              },
            ),
          ),
            body: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                        Widget>[
                  Container(
                    child: Padding(padding: EdgeInsets.only(top: 50)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5)),
                  Image.asset(
                    'lib/images/order.jpg',
                    fit: BoxFit.contain,
                    height: 150,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      margin: EdgeInsets.only(bottom: 30, top: 5),
                      child: Column(children: [
                        Text(
                          " Edit now !",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mulish-VariableFont',
                          ),
                        ),
                        Text(
                          " Edit information for your dishes",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Mulish-VariableFont',
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(
                              top: 15,
                              left: 30,
                              right: 30,
                            ),
                            child: Form(
                                child: Column(children: [
                              TextFormField(
                               controller: provider.productNameController,
                                decoration: InputDecoration(
                                  // suffixIcon: Icon(
                                  //   Icons.person,
                                  //   color: Color.fromARGB(255, 66, 85, 54),
                                  // ),
                                 // hintText: "Name",
                                  labelText: "Product Name",
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: kPrimaryColor,
                                          width: 2.5)),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: kPrimaryColor,
                                  )),
                                ),
                                keyboardType: TextInputType.name,
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                               controller: provider.productPriceController,
                               
                                decoration: InputDecoration(
                                  hintText: "edit Price",
                                  labelText: "Price",
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.5),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: kPrimaryColor,
                                  )),
                                ),
                                // obscureText: true,
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                maxLines: 4,

                                controller: provider.productDetailsController,
                                decoration: InputDecoration(
                                  hintText: "add new Discription",
                                  labelText: "Product Details",
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.5),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: kPrimaryColor,
                                   
                                  )),
                                ),
                                // obscureText: true,
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                maxLines: 4,
                                controller: provider.productIngredientsController,
                                decoration: InputDecoration(
                                  hintText: "add new ingredients",
                                  labelText: "Ingredients",
                                  labelStyle: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      fontFamily: "Mulish-VariableFont"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0)),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: kPrimaryColor,
                                        width: 2.5),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                    color: kPrimaryColor,
                                  )),
                                ),
                                // obscureText: true,
                              ),
                              SizedBox(height: 15,),
                              ElevatedButton(
                                onPressed: () async{
                                  await provider.updateItem();
                                  // order_now(username.text, address.text, phone.text,
                                  //     widget.total, widget.orderdetail);
                                   showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text("Success"),
                            content: Text("Item Updated Successfully"),
                            actions: <Widget>[
                              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('ok'))
                            ]
                          );
                        });
                                },
                                // ignore: sort_child_properties_last
                                child: Text(
                                  "Confirm",
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 146, 14, 14),
                                    padding: EdgeInsets.all(10),
                                    minimumSize: Size(250.0, 40.0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25)),
                                    textStyle: TextStyle(
                                      fontFamily: 'Mulish-VariableFont',
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ])))
                      ])),
                ])));
      }
    );
  }
}
