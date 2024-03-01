import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';
import '../profile/menufor_profile.dart';
import 'user_info.dart';
import 'package:flutter_svg/svg.dart';

//import 'profile_menu_item.dart';

class Body_profile extends StatelessWidget {
  const Body_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context,provider,c) {
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
               Info(
               image: "lib/images/pic.png",
                name: provider.loggedUser.fullName,
                email: provider.loggedUser.mobile,
              ),
              SizedBox(height: 20), //20
              ProfileMenuItem(
                iconSrc: "lib/icons/add_to_cart.svg",
                title: "shopping cart",
                press: () {}, 
              ),
              ProfileMenuItem(
                iconSrc: "lib/icons/heart_fill.svg",
                title: "Favorite Page",
                press: () {},
              ),
              ProfileMenuItem(
                iconSrc: "lib/icons/bookmark_fill.svg",
                title: "About Us",
                press: () {},
              ),
              ProfileMenuItem(
                iconSrc: "lib/icons/info.svg",
                title: "Help",
                press: () {},
              ),
            ],
          ),
        );
      }
    );
  }
}
