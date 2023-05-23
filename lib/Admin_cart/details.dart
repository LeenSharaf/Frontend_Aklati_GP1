import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../constran.dart';
import 'cart_detailes.dart';

 
class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(             
       appBar: buildAppBar(context),
       

      body:
    ListView(children: [
      SizedBox(height: 30),
      Container(height: 600, 
      padding: EdgeInsets.only(top: 0, bottom: 0, left: 20, right: 0),
      decoration: const BoxDecoration(color:Color.fromARGB(255, 220, 219, 228),
  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                  topRight: Radius.circular(70),
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)
                  
       )
       ),
       child: Column(children: [
        cartcus(),
       Container(//decoration: BoxDecoration
      // (borderRadius: BorderRadius.circular(10))
       margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
       padding: EdgeInsets.all(10),
       child: Row(children: [
        Container(decoration: BoxDecoration(color: Color.fromARGB(255, 146, 14, 14),
        borderRadius: BorderRadius.circular(20)),)
       ],),)],),)
      ],
      ),
     // bottomNavigationBar: cartBottom(),
     
      );

  }
}


AppBar buildAppBar(BuildContext context) {
    return AppBar(
     backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color: Colors.white,
        onPressed: () {
                    Navigator.pop(context);
 },
      ),
       title: Text(
        " Order Details",
        style:
            TextStyle(color: Colors.white, fontFamily: "Mulish-VariableFont"),
      ),

      centerTitle: true,
     

    );
}