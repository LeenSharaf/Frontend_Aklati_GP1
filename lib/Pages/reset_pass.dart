import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../customer/LogIn.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  initWidget() {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
          ],backgroundColor:Color.fromARGB(255, 146, 14, 14) ,
          leading:IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.only
              //  (bottomLeft:Radius.circular(20),bottomRight:Radius.circular(20) )),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 70),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              child: Text(
                "Did you forget your password ?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Please enter your email address",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                ],
              ),
            ),

            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 20, right: 20, top: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.grey[200],
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)),
                ],
              ),
              child: TextField(
                cursorColor: Color.fromARGB(255, 146, 14, 14),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 146, 14, 14),
                  ),
                  hintText: "Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              // Write Click Listener Code Here.

              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 40, right: 40, top: 50),
                padding: EdgeInsets.only(left:50, right: 50),
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 146, 14, 14),
                    Color.fromARGB(255, 146, 14, 14)
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: Color(0xffEEEEEE)),
                  ],
                ),
                child: Text(
                  "Reset Password",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),

          

            // google + apple sign in buttons
         
          ],
        )));
  }
}
