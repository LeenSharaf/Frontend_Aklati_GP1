// ignore_for_file: prefer_const_constructors, prefer_final_fields, depend_on_referenced_packages, use_build_context_synchronously, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;
import 'package:mailer/mailer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constran.dart';
import 'loginfor_smalluser.dart';


class signupAdmin extends StatefulWidget {
 // final String total, orderdetail;
  const signupAdmin({Key? key})
      : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<signupAdmin> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
    TextEditingController pageController = TextEditingController();
      TextEditingController logoController = TextEditingController();


  

  bool _isNotValidate = false;
  void registerAdmin() async{
    if(nameController.text.isNotEmpty && mobileController.text.isNotEmpty && passwordController.text.isNotEmpty && addressController.text.isNotEmpty && pageController.text.isNotEmpty&& logoController.text.isNotEmpty){
      var regBody = {
      "fullName":nameController.text,
       "mobile":mobileController.text,
        "password":passwordController.text,
        "address":addressController.text,
        "pageOwner":pageController.text,
        "logo":logoController.text,
        
        
      };
      var response = await http.post(Uri.parse("http://10.0.2.2:3000/addAdmin"),
      headers: {"Content-Type":"application/json"},
      body: jsonEncode(regBody)
      );
      



      var jsonResponse = jsonDecode(response.body);
     // print(jsonResponse['status']);
      if(jsonResponse['success']){
        Fluttertoast.showToast(
          msg: "Registration successful !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.green,
          textColor: Colors.white,
          fontSize: 16.0);
        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginUser()));
      }else{
         Fluttertoast.showToast(
          msg: "This user already exit !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
        print("This email does exist");
      }
    }else{
      setState(() {
        _isNotValidate = true;
      });
    }
  }


 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text("Sign Up",
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
                'lib/images/signup.jpg',
                fit: BoxFit.contain,
                height: 150,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.only(bottom: 30, top: 5),
                  child: Column(children: [
                    Text(
                      " Creat Your Page!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish-VariableFont',
                      ),
                    ),
                    
                   Container(
              alignment: Alignment.center,
               margin: EdgeInsets.only(left: 20, right: 20, top: 25),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Color.fromARGB(200, 238, 238, 238),
                 boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  ),
                ],
                ),
                //alignment: Alignment.center
               child: TextField(
               controller: nameController,

              cursorColor:kPrimaryColor,
                decoration: InputDecoration(
                 
                      //   filled: true,
                      //  // fillColor: Colors.white,
                      //   errorStyle: TextStyle(color: Colors.black),
                        
                  
              icon: Icon(
                    Icons.person,
                    color: kPrimaryColor),
                    hintText: "Full Name",
                    enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  ), ),
                  ),



                   Container(
              alignment: Alignment.center,
               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Color.fromARGB(253, 238, 238, 238),
                 boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  ),
                ],
                ),
                //alignment: Alignment.center
               child: TextField(
              controller: mobileController,

              cursorColor: kPrimaryColor,
                decoration: InputDecoration(
              icon: Icon(
                    Icons.phone,
                    color: kPrimaryColor),
                    hintText: "Phone Number",
                    enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  ), ),
                  ),


                  Container(
              alignment: Alignment.center,
               margin: EdgeInsets.only(left: 20, right: 20, top: 25),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Color.fromARGB(200, 238, 238, 238),
                 boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  ),
                ],
                ),
                //alignment: Alignment.center
               child: TextField(
               controller: pageController,

              cursorColor:kPrimaryColor,
                decoration: InputDecoration(
                 
                      //   filled: true,
                      //  // fillColor: Colors.white,
                      //   errorStyle: TextStyle(color: Colors.black),
                        
                  
              icon: Icon(
                    Icons.pages,
                    color: kPrimaryColor),
                    hintText: "Page Name",
                    enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  ), ),
                  ),
                  Container(
              alignment: Alignment.center,
               margin: EdgeInsets.only(left: 20, right: 20, top: 25),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Color.fromARGB(200, 238, 238, 238),
                 boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  ),
                ],
                ),
                //alignment: Alignment.center
               child: TextField(
               controller: logoController,

              cursorColor:kPrimaryColor,
                decoration: InputDecoration(
                 
                      //   filled: true,
                      //  // fillColor: Colors.white,
                      //   errorStyle: TextStyle(color: Colors.black),
                        
                  
              icon: Icon(
                    Icons.local_dining_outlined,
                    color: kPrimaryColor),
                    hintText: "page logo",
                    enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  ), ),
                  ),



 Container(
              alignment: Alignment.center,
               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Color.fromARGB(253, 238, 238, 238),
                 boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  ),
                ],
                ),
                //alignment: Alignment.center
               child: TextField(
            controller: addressController,

              cursorColor: kPrimaryColor,
                decoration: InputDecoration(
              icon: Icon(
                    Icons.location_city,
                    color: kPrimaryColor),
                    hintText: "Your address",
                    enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  ), ),
                  ),
 Container(
              alignment: Alignment.center,
               margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Color.fromARGB(253, 238, 238, 238),
                 boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  ),
                ],
                ),
                //alignment: Alignment.center
               child: TextField(
               controller: passwordController,

                obscureText: true,
              cursorColor: kPrimaryColor,
                decoration: InputDecoration(
              icon: Icon(
                    Icons.vpn_key,
                    color: kPrimaryColor),
                    hintText: "Passward",
                    enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  ), ),
                  ),
                      GestureDetector(
                  onTap: () {
                            registerAdmin();

                                    },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                    padding: EdgeInsets.only(left: 20, right: 20),
                    height: 54,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [kPrimaryColor, kPrimaryColor],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey[200],
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color(0xffEEEEEE)
                        ),
                      ],
                    ),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                 Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have Already Account?  "),
                      GestureDetector(
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                              color: kPrimaryColor,
                          ),
                        ),
                        onTap: () {
                          // Write Tap Code Here.
                          Navigator.pop(context);
                        },
                      )
              ],
                  ),
                )
                  ])),
            ])));
  }
}
