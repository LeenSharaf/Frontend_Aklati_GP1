import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';
import '../constran.dart';
import 'LogIn.dart';
import 'config.dart';

class SignUpScreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SignUpScreen> {



// bool _secureText = false;

//   TextEditingController fallname = TextEditingController();
//   TextEditingController phonenumber = TextEditingController();
//   TextEditingController username = TextEditingController();
//   TextEditingController password = TextEditingController();

//   Future register() async {
//     var url = 'http://192.168.1.109/connect/signup.php';

//     var response = await http.post(Uri.parse(url), body: {
//       "fallname": fallname.text,
//       "phonenumber": phonenumber.text,
//       "username": username.text,
//       "password": password.text,
//     });

//     var data = json.decode(response.body);
//     print(data);
//     if (data == "Error") {
//       Fluttertoast.showToast(
//           msg: "This user already exit !",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.red,
//           textColor: Colors.white,
//           fontSize: 16.0);
//     } else {
//       Fluttertoast.showToast(
//           msg: "Registration successful !",
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.CENTER,
//           timeInSecForIosWeb: 1,
//           backgroundColor: Colors.green,
//           textColor: Colors.white,
//           fontSize: 16.0);
//                     int id = data;


//       Navigator.of(context).push(
//         MaterialPageRoute(
//           builder: (_) => LoginScreen(),
//         ),
//       );
//     }
//   }


  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  bool _isNotValidate = false;
  void registerUser() async{
    if(nameController.text.isNotEmpty && mobileController.text.isNotEmpty && passwordController.text.isNotEmpty && addressController.text.isNotEmpty  ){
      var regBody = {
      "fullName":nameController.text,
       "mobile":mobileController.text,
        "password":passwordController.text,
        "address":addressController.text
      };
      var response = await http.post(Uri.parse("http://10.0.2.2:3000/addUser"),
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
        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
      }else{
         Fluttertoast.showToast(
          msg: "This user already exit !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
        print("This phone does exist");
      }
    }else{
      setState(() {
        _isNotValidate = true;
      });
    }
  }














  @override
  Widget build(BuildContext context) => initWidget();

  Widget initWidget() {
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
                                
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(left: 20, right: 20, top: 25),
                                child: Text("Create Account !",style: TextStyle(fontSize: 24),
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
                   controller: provider.signupNameController,

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
                  controller: provider.signupNumberController,

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
                controller: provider.signupLocationController,

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
                    controller: provider.signupPassController,

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
                      onTap: () async{
                        final res=await provider.signUp();

                        showDialog(context: context, builder: (context){
                          return AlertDialog(title: Text(res=='OK'?"Added Successfully":"Wrong !"),
                          content: Text(res=='OK'?"Added Successfully":"Something Went Wrong !"),);

                        });
                                

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
                  ],
                )
            )
        );
      }
    );
  }
}
