//import 'dart:io';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_homee/Pages/admain_add.dart';

import 'package:test_homee/Shop/shop.dart';
import 'package:test_homee/main_home.dart';
import 'package:http/http.dart' as http;


import 'Signup.dart';
import 'package:flutter/material.dart';
import 'Signup_admin.dart';
import 'config.dart';
import 'square_tile.dart';
import 'package:test_homee/constran.dart';

class LoginUser extends StatefulWidget {
//final int id;
const LoginUser({Key? key,}) : super(key: key);
    
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginUser> {
   // final String username;

  bool _showPassword = true;



TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isNotValidate = false;
  late SharedPreferences prefs;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    initSharedPref();
  }
  void initSharedPref() async{
    prefs = await SharedPreferences.getInstance();
  }
  void loginAdmin() async{
    if(mobileController.text.isNotEmpty && passwordController.text.isNotEmpty){
      var reqBody = jsonEncode({
        "mobile": mobileController.text,
        "password": passwordController.text
      });
      //print(login);
      var response = await http.post(Uri.parse("http://10.0.2.2:3000/loginAdmin"),
          headers: {"Content-Type":"application/json"},
          body: reqBody
      );
      var jsonResponse = jsonDecode(response.body);
    //jsonResponse['success']==true
      if(jsonResponse['success']){
         Fluttertoast.showToast(
                                  msg: 'Log in Successful !',
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  backgroundColor: Colors.green,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => creat(
                                            
                                          )));
          // var myToken = jsonResponse['token'];
          // prefs.setString('token', myToken);
      }else{
        //print('Something went wrong');
        Fluttertoast.showToast(
          msg: " invaled username or password !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 12.0);
      }
    }
  }






















  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
         padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>
          [
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
                      " Login to Your Page!",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Mulish-VariableFont',
                      ),
                    ),
           

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 50),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
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
              child: TextField(
              controller: mobileController,

              cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                color: kPrimaryColor,
                  ),
                  hintText: "Enter Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
                                        SizedBox(height: 15),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xffEEEEEE),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 20),
                      blurRadius: 100,
                      color: Color(0xffEEEEEE)
                  ),
                ],
              ),
              child: TextField(
   
                  obscureText: _showPassword,
                 controller: passwordController,
              cursorColor: kPrimaryColor,
                decoration: InputDecoration(
                  focusColor: kPrimaryColor,
                  icon: Icon(
                    Icons.vpn_key,
                    color: kPrimaryColor,
                  ),
                  hintText: "Enter Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,


                   suffixIcon: GestureDetector(
                                      onTap: _togglePasswordVisibility,
                                      child: _showPassword
                                          ? Icon(Icons.visibility,
                                              color:kPrimaryColor)
                                          : Icon(Icons.visibility_off,
                                              color: kPrimaryColor),
                                    ),
                ),
              ),
             
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                          //  Navigator.of(context).push(
                          //                 MaterialPageRoute(
                          //                     builder: (context) =>
                          //                         forgetPassword()));               
                                                   },
                child: Text("Forget Password?",
                style: TextStyle(
                                          color: Colors.black,
                                          
                                          fontSize: 15,
                                          ),),
              ),
            ),
                                        SizedBox(height: 40),

            GestureDetector(
               onTap: (){
                loginAdmin();
                    },
             
                // Write Click Listener Code Here.
              

              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
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
                  "LOGIN",
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),


              //  Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Row(
              //     children: [
              //       Expanded(
              //         child: Divider(
              //           thickness: 0.5,
              //           color: Colors.grey[400],
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
              //         child: Text(
              //           'Or continue with',
              //           style: TextStyle(color: Colors.grey[700]),
              //         ),
              //       ),
              //       Expanded(
              //         child: Divider(
              //           thickness: 0.5,
              //           color: Colors.grey[400],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // const SizedBox(height: 10),

              // // google + apple sign in buttons
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: const [
              //     // google button
              //     SquareTile(imagePath: 'lib/images/facebook.jpg'),

              //     SizedBox(width: 25),

              //     // apple button
              //     SquareTile(imagePath: 'lib/images/google.jpg')
              //   ],
              // ),









            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have Any Account?  "),
                  GestureDetector(
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          color: kPrimaryColor
                      ),
                    ),
                    onTap: () {
                      // Write Tap Code Here.
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signupAdmin(),
                        )
                      );
                    },
                  )
                ],
              ),
            )
            ])),
          ],
        )
      )
    );
  }
   void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }
}