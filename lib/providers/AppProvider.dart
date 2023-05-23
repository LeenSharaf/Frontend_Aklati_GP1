import 'dart:convert';

import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  int dummydata=0;
  TextEditingController passwordController=TextEditingController();
  TextEditingController mobileController=TextEditingController();
  String adminId="";
  get http => null;
  login()async{
    var reqBody = jsonEncode({
        "mobile": mobileController.text,
        "password": passwordController.text
      });
      //print(login);
      var response = await http.post(Uri.parse("http://10.0.2.2:3000/loginUser"),
          headers: {"Content-Type":"application/json"},
          body: reqBody
      );
      var jsonResponse = jsonDecode(response.body);
      return jsonResponse;
  }
  getData(){
    return dummydata;
  }

}