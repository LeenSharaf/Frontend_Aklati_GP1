
import 'package:flutter/material.dart';
import 'package:test_homee/Shop/shop.dart';
import 'package:test_homee/Filter/popup.dart';
import 'Pages/admain_add.dart';
import 'Pages/mainDishes.dart';
import 'search_box.dart';
import 'constran.dart';
//import 'package:furniture_app/screens/details/details_screen.dart';

//import 'category_list.dart';

class Body extends StatelessWidget {

  const Body({super.key});

  @override
  Widget build(BuildContext context) {
   // var id;
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
         
                SearchBox(onChanged: (value) {},),     
          
Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                "Categories",
                style: TextStyle(
                    //fontFamily: 'Mulish-VariableFont',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const Clothes(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/maindishes.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Main Dishes',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
///////////////////////////////////////
                        ///
                        SizedBox(width: 20),
                        Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const popular(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/popular.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Traditional food',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                      //fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                        //////////////////////////////////////////////
                        ///
                        SizedBox(width: 20),
                        Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              //Navigator.of(context).push(MaterialPageRoute(
                               //   builder: (context) => Needs()));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/dessert.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Dessert',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 20),

                         Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const Clothes(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/snack.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Breakfast',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),

              SizedBox(width: 20),

                         Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const Clothes(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/snack.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Sea Food',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10),
                                  ],
                            ),
                          ),
                        ),

SizedBox(width: 20),

                         Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const Clothes(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/snack.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Drinks',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10),
                                  ],
                            ),
                          ),
                        ),

SizedBox(width: 20),

                         Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const Clothes(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/snack.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Salad',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10),
                              ],
                            ),
                          ),
                        ),



                        SizedBox(width: 20),

                         Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const Clothes(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/snack.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Appetizers',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10)

                              ],
                            ),
                          ),
                        ),




                        SizedBox(width: 20),

                         Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const Clothes(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/snack.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Healty Food',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10)

                              ],
                            ),
                          ),
                        ),



                        SizedBox(width: 20),

                         Material(
                          // color: Color.fromARGB(255, 171, 209, 147),
                          elevation: 1,
                          borderRadius: BorderRadius.circular(28),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.black,
                            onTap: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (context) => const Clothes(username: '',)));
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  margin: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                                Image.asset(
                                  'lib/cats/snack.png',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 10,
                                ),
                                Text(
                                  'Others',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                     // fontFamily: "Mulish-VariableFont",
                                      fontWeight: FontWeight.bold),
                                  //selectionColor: Colors.white,
                                ),
                                SizedBox(width: 10)

                              ],
                            ),
                          ),
                        ),














                      ],
                    ),
                  )
                ],
              ),
            ),          const SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                // Our background
                Container(
                  margin:const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                   color: kBackgroundColor,
                   //color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Shop(),
               
              ],
            ),
          ),
        ],
      ),
    );
  }
}