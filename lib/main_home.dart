import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:recipe_app/components/my_bottom_nav_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:test_homee/Shop/shop.dart';
import 'package:test_homee/products_screen.dart';
import 'package:test_homee/profile/profile_screen.dart';

import 'Pages/offers.dart';
import 'constran.dart';

class Home extends StatefulWidget {
 
  const Home({Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
        bottomNavigationBar:CurvedNavigationBar(
                  index: index,
          onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
         
      backgroundColor: Colors.white,
      color: kPrimaryColor,
     animationDuration: Duration(milliseconds: 300),

      items: [
        
       Icon(Icons.chat , color: Colors.white, ),
               Icon(Icons.home, color: Colors.white,),
        Icon(Icons.percent ,color: Colors.white,),
         //Icon(Icons.account_box , color: Colors.white,),
        // Icon(Icons.restaurant_menu ,color: Colors.white,),
          Icon(Icons.notifications ,color: Colors.white,),

     ],
     
    ),
    
          body: getSelectedWidget(index: index   ),
         

    );

  }

 Widget getSelectedWidget({required int index
 }){
  
    Widget widget;
    //final int id;
    switch(index){
      case 0:
        widget =  ProfileScreen();
        break;
      case 1:
       //var id;
       widget =  ProductsScreen();
               break;

              // widget =  ProfileScreen();
              case 2:
       //var id;
       widget =  Offers();

        break;
      default:
        widget =  ProfileScreen();
        break;
    }
    return widget;
  }
}

 