//import 'dart:io';
import 'dart:convert';
import 'dart:developer';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import '../../constran.dart';

import '../Pages/fav.dart';
import '../main_home.dart';
import 'Signup.dart';
import 'package:flutter/material.dart';
import 'config.dart';
import 'square_tile.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<LoginScreen> {
 bool _showPassword = true;

//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();


//   Future login() async {
//     var url = 'http://192.168.1.109/connect/login.php';

//     var response = await http.post(Uri.parse(url), body: {
//       "username": username.text,
//       "password": password.text,
      
//     });
//               var data = json.decode(response.body);

//     if (data == "Error 404") {
//       Fluttertoast.showToast(
//           msg: " invaled username or password !",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 12.0);
//     } else {
//       SharedPreferences preferences = await SharedPreferences.getInstance();
//       preferences.setString('username', username.text);
//       Fluttertoast.showToast(
//           msg: "Log in Successful !",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.green,
//           textColor: Colors.white,
//           fontSize: 12.0);

                   



//           int id = data;
//          print(id);

//       Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) => Home(id: id)));
      
//     }
//   }
 

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
  












  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Consumer<AppProvider>(
      builder: (context,provider,c) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
              height: 300,
            
              decoration: BoxDecoration(
                image: DecorationImage(
                 fit:BoxFit.fill ,
                 image: AssetImage("lib/images/back1.png")
                 ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                 color: Colors.white,
                //     gradient: LinearGradient(colors: [kPrimaryColor,kPrimaryColor],
                //       begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                // ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromARGB(255, 207, 161, 161)
                  ),
                ],
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
                  controller: provider.mobileController,

                  cursorColor: kPrimaryColor,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.phone,
                    color: kPrimaryColor,
                      ),
                      hintText: "Enter your phone",
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),

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
                    controller: provider.passwordController,
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
                                         
                                                       },
                    child: Text("Forget Password?",
                    style: TextStyle(
                                              color: Colors.black,
                                              
                                              fontSize: 15,
                                              ),),
                  ),
                ),

                GestureDetector(
                   onTap: ()async{
                    final re=await provider.loginuser();
                    log(re);
                    if(re=='success'){

                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return Home();}));
                    }
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

                  const SizedBox(height: 20),

                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  // google + apple sign in buttons
                 

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
                              builder: (context) => SignUpScreen(),
                            )
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            )
          )
        );
      }
    );
  }
   void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }
}
