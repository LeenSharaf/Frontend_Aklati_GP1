import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sideMenu extends StatefulWidget {
  const sideMenu({super.key});

  @override
  State<sideMenu> createState() => _sideMenu();
}

class _sideMenu extends State<sideMenu> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 146, 14, 14),
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
                onTap: () {},
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
                  "Roa'a",
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
                onTap: () {},
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
                onTap: () {},
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
              ListTile(
                onTap: () {},
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
                  "Help",
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
                    Icons.input,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          )
        ]),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 146, 14, 14),
      ),

      /* body: Container(
      width: 280,
      height: double.infinity,
      color: Color.fromARGB(255, 146, 14, 14),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Info(
              name: "Roa'a",
            ),
            Padding(padding: EdgeInsets.only(left: 24,top: 32,bottom: 16),child: 
            Text("Browse".toUpperCase(),style: TextStyle(color: Color.fromARGB(255, 233, 221, 221),fontSize: 18),
            //textAlign: TextAlign.left
            ),),
            menuTitle(),
          ],
        ),
      ),
    )*/
    );
  }
}
