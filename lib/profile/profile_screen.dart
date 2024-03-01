import 'package:flutter/material.dart';
import '../main_home.dart';
import '../profile/body.dart';

import '../constran.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   // SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar2(),
      body: Body_profile(),
     // bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar2() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () => {
              /*Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Home()))*/
            },
      ),      // On Android it's false by default
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
       ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
          ),
          onPressed: () {},
          child: Text(
            "Edit",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
