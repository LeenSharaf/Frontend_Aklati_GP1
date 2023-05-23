// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Hom extends StatefulWidget {
  //final String username;
  const Hom({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Hom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Home Page",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontFamily: "Mulish-VariableFont",
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 20, 51, 0),
            actions: [
              IconButton(
                onPressed: () => {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => Login())),
                },
                icon: Icon(
                  Icons.exit_to_app,
                  size: 20,
                ),
              ),
            ]),
        body: Center(
          child: Column(
            //mainAxisAlignment: EdgeInsets.only(double top:30.0 ),
            children: [
              Container(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Color.fromARGB(255, 171, 209, 147),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) =>
                        //         Shop(username: widget.username)));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin:
                                EdgeInsets.only(top: 20, left: 60, right: 60),
                          ),
                          Image.asset(
                            'lib/images/1.png',
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'For your needs',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: "Mulish-VariableFont",
                                fontWeight: FontWeight.bold),
                            //selectionColor: Colors.white,
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 30,
                  ),
                  Material(
                    color: Color.fromARGB(255, 171, 209, 147),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => Doctor(
                        //           username: widget.username,
                        //         )));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin:
                                EdgeInsets.only(top: 20, left: 60, right: 60),
                          ),
                          Image.asset(
                            'lib/images/6.png',
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'For your health',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: "Mulish-VariableFont",
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 20,
                width: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                    color: Color.fromARGB(255, 171, 209, 147),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        // Navigator.of(context).push(
                        //     MaterialPageRoute(builder: (context) => Events()));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin:
                                EdgeInsets.only(top: 20, left: 60, right: 60),
                          ),
                          Image.asset(
                            'lib/images/3.png',
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'For your events',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: "Mulish-VariableFont",
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 30,
                  ),
                  Material(
                    color: Color.fromARGB(255, 171, 209, 147),
                    elevation: 8,
                    borderRadius: BorderRadius.circular(28),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => Medicine()));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            margin:
                                EdgeInsets.only(top: 20, left: 60, right: 60),
                          ),
                          Image.asset(
                            'lib/images/4.png',
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'For your manage',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                                fontFamily: "Mulish-VariableFont",
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                            //width: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
