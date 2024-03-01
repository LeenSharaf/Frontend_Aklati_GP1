
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/customer/LogIn.dart';
import 'package:roaa/providers/AppProvider.dart';
import '../Filter/h.dart';
import '../Shop/shop.dart';
import '../main_home.dart';
//import 'package:flutter_svg/svg.dart';
import 'Pages/fav.dart';
import 'User_cart/Myorder.dart';
import 'constran.dart';
import 'body.dart';
import 'uitls/sidemenu.dart';

class ProductsScreen extends StatefulWidget {
 
  const ProductsScreen({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _ProductsScreenState createState() => _ProductsScreenState();
}
class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context){
    return Consumer<AppProvider>(
      builder: (context,provider,c) {
        return Scaffold(
          // drawer: Drawer(
          //   backgroundColor: Color.fromARGB(255, 146, 14, 14),
          //   child: ListView(padding: EdgeInsets.zero, children: [
          //     Column(crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Padding(
          //           padding: EdgeInsets.all(13),
          //           // child: Divider(
          //           //  color: Color.fromARGB(162, 248, 246, 246),
          //           //  height: 1,
          //           // )
          //         ),
          //         ListTile(
          //           onTap: () {
                      
          //           },
          //           leading: CircleAvatar(
          //             // height: 34,
          //             // width: 34,
          //             backgroundColor: Colors.white,
          //             child: Icon(
          //               CupertinoIcons.person,
          //               color: Color.fromARGB(255, 146, 14, 14),
          //             ),
          //           ),
          //           title: Text(
          //             provider.loggedUser.fullName,
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //         Padding(padding: EdgeInsets.only(left: 24,top: 32,bottom: 16),child: 
          //       Text("Browse".toUpperCase(),style: TextStyle(color: 
          //       Color.fromARGB(255, 233, 221, 221),fontSize: 16),
          //       //textAlign: TextAlign.left
          //       ),),
          //         Padding(
          //             padding: EdgeInsets.only(left: 24),
          //             child: Divider(
          //               color: Color.fromARGB(162, 248, 246, 246),
          //               height: 1,
          //             )),
          //         ListTile(
          //           onTap: () {
          //             Navigator.of(context)
          //               .push(MaterialPageRoute(builder: (context) => Home()));
          //           },
          //           leading: SizedBox(
          //             height: 34,
          //             width: 34,
          //             child: Icon(
          //               Icons.home,
          //               color: Colors.white,
          //             ),
          //           ),
          //           title: Text(
          //             "Home",
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //         Padding(
          //             padding: EdgeInsets.only(left: 24),
          //             child: Divider(
          //               color: Color.fromARGB(162, 248, 246, 246),
          //               height: 1,
          //             )),
          //         ListTile(
          //           onTap: () async{
          //             await provider.getUserorder();
          //             Navigator.of(context)
          //               .push(MaterialPageRoute(builder: (context) => userOrder()));
          //           },
          //           leading: SizedBox(
          //             height: 34,
          //             width: 34,
          //             child: Icon(
          //               Icons.shopping_cart,
          //               color: Colors.white,
          //             ),
          //           ),
          //           title: Text(
          //             "Shopping Cart",
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //         Padding(
          //             padding: EdgeInsets.only(left: 24),
          //             child: Divider(
          //               color: Color.fromARGB(162, 248, 246, 246),
          //               height: 1,
          //             )),
          //             ListTile(
          //           onTap: () {Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (_) => Hom(),
          //   ),
          // );},
          //           leading: SizedBox(
          //             height: 34,
          //             width: 34,
          //             child: Icon(
          //               Icons.shopping_cart,
          //               color: Colors.white,
          //             ),
          //           ),
          //           title: Text(
          //             "all Pages",
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //         Padding(
          //             padding: EdgeInsets.only(left: 24),
          //             child: Divider(
          //               color: Color.fromARGB(162, 248, 246, 246),
          //               height: 1,
          //             )),
          //         ListTile(
          //           onTap: () {
          //             Navigator.of(context)
          //               .push(MaterialPageRoute(builder: (context) => Favourite()));
          //           },
          //           leading: SizedBox(
          //             height: 34,
          //             width: 34,
          //             child: Icon(
          //               Icons.favorite,
          //               color: Colors.white,
          //             ),
          //           ),
          //           title: Text(
          //             "Favorite",
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //         Padding(
          //             padding: EdgeInsets.only(left: 24),
          //             child: Divider(
          //               color: Color.fromARGB(162, 248, 246, 246),
          //               height: 1,
          //             )),
          //         ListTile(
          //           onTap: () {},
          //           leading: SizedBox(
          //             height: 34,
          //             width: 34,
          //             child: Icon(
          //               Icons.notifications,
          //               color: Colors.white,
          //             ),
          //           ),
          //           title: Text(
          //             "Notifications",
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //         Padding(
          //             padding: EdgeInsets.only(left: 24),
          //             child: Divider(
          //               color: Color.fromARGB(162, 248, 246, 246),
          //               height: 1,
          //             )),
          //         ListTile(
          //           onTap: () {},
          //           leading: SizedBox(
          //             height: 34,
          //             width: 34,
          //             child: Icon(
          //               Icons.help,
          //               color: Colors.white,
          //             ),
          //           ),
          //           title: Text(
          //             "Help",
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //         Padding(
          //             padding: EdgeInsets.only(left: 24),
          //             child: Divider(
          //               color: Color.fromARGB(162, 248, 246, 246),
          //               height: 1,
          //             )),
          //         ListTile(
          //           onTap: () {},
          //           leading: SizedBox(
          //             height: 34,
          //             width: 34,
          //             child: Icon(
          //               Icons.input,
          //               color: Colors.white,
          //             ),
          //           ),
          //           title: Text(
          //             "About Us",
          //             style: TextStyle(color: Colors.white),
          //           ),
          //         ),
          //       ],
          //     )
          //   ]),
          // ),
          drawer: Drawer(
        backgroundColor: kPrimaryColor,
        child: ListView(padding: EdgeInsets.zero, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(13),
                // child: Divider(
                //  color: Color.fromARGB(162, 248, 246, 246),
                //  height: 1,
                // )
              ),
              ListTile(
                onTap: () {
                  
                },
                leading: CircleAvatar(
                  // height: 34,
                  // width: 34,
                  backgroundColor: Colors.white,
                  child: Icon(
                    CupertinoIcons.person,
                    color: Color.fromARGB(255, 146, 14, 14),
                  ),
                ),
                title: Text(
                      provider.loggedUser.fullName,
                      style: TextStyle(color: Colors.white),
                    ),
              ),
              Padding(padding: EdgeInsets.only(left: 24,top: 32,bottom: 16),child: 
            Text("Browse".toUpperCase(),style: TextStyle(color: 
            Color.fromARGB(255, 233, 221, 221),fontSize: 16),
            //textAlign: TextAlign.left
            ),),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
                },
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => userOrder()));
                },
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Shopping Cart",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
      //             ListTile(
      //           onTap: () {Navigator.of(context).push(
      //   MaterialPageRoute(
      //     builder: (_) => Hom(),
      //   ),
      // );},
      //           leading: SizedBox(
      //             height: 34,
      //             width: 34,
      //             child: Icon(
      //               Icons.shopping_cart,
      //               color: Colors.white,
      //             ),
      //           ),
      //           title: Text(
      //             "all Pages",
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Favourite()));
                },
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Favorite",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Notifications",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Divider(
                    color: Color.fromARGB(162, 248, 246, 246),
                    height: 1,
                  )),
              ListTile(
                onTap: () {Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginScreen()));},
                leading: SizedBox(
                  height: 34,
                  width: 34,
                  child: Icon(
                    Icons.input,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ]),
      ),
          appBar: buildAppBar(),
          backgroundColor: kPrimaryColor,
         body:  Body(),
        );
      }
    );
  }

  AppBar buildAppBar() {
    return AppBar(
     backgroundColor: Color.fromARGB(255, 204, 24, 24),
      elevation: 0,
      /*leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
                   // Navigator.pop(context);
 },
      ),*/

      centerTitle: true,
      title:Text(
            "WELCOME TO AKLATI APP",
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: "Mulish-VariableFont"),
          ),
          

      /*actions: <Widget>[
        IconButton(
           icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
       
      ],*/
      actions: [
            IconButton(
               onPressed: () {
Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Favourite()));
           
                          },
              icon: Icon(
                Icons.favorite_outline_outlined,
              ),
            ),
            IconButton(
              onPressed: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => userOrder()))
              
              },
              icon: Icon(
          Icons.shopping_cart,
              ),
            ),
          ]

    );
    
  }
}


