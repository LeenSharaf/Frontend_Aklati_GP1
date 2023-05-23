import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_homee/Shop/shop.dart';
import 'package:test_homee/Shop/shopData.dart';

import 'package:test_homee/body.dart';
import 'package:test_homee/main_home.dart';
import 'package:test_homee/providers/AppProvider.dart';
import 'package:test_homee/start_page/foradmin/mysite.dart';
import 'package:test_homee/start_page/splash.dart';
import 'Admin_cart/inprogress.dart';
import 'Filter/h.dart';
import 'Pages/add_new.dart';
import 'Pages/admain_add.dart';
import 'Pages/discount.dart';
import 'Pages/edit_order.dart';
import 'Pages/fav.dart';
import 'Pages/maindishes.dart';
import 'Shop/itemDetail.dart';
import 'Shop/testfordetail.dart';
import 'constran.dart';
import 'customer/Signup_admin.dart';
import 'customer/loginfor_smalluser.dart';
import 'products_screen.dart';
void main() {
    //final int id;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //final int id;

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // var recipeBundle;
    var shopData;
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context){
          return AppProvider();
        })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Furniture app',
        theme: ThemeData(
          // We set Poppins as our default font
          //textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: kPrimaryColor,
          //accentColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
       //home:  Itm(shopdata: data(name: "name", Image: "Image", desc: "desc", price: "price", namepage: "namepage")),
       home:SplashScreen(),
       //home: inProg(),
      // home: editOrder(),
        
       // home:discount(),
       //home:Favourite(),
    
    //home: Detail(),
      ),
    );
  }
}