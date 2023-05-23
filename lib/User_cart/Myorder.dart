import 'package:flutter/material.dart';


import '../constran.dart';
import 'item_cart.dart';

class userOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: buildAppBar(context),

      body: ListView(children: [
      Container(height: 700,padding: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(color:Color(0xFFEDECF2),
      borderRadius:
       BorderRadius.only(topLeft:Radius.circular(35) ,topRight: Radius.circular(35)
       )
       ),
       child: Column(children: [
        cartItem(),
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
        "My Order",
        style:
            TextStyle(color: Colors.white, fontFamily: "Mulish-VariableFont"),
      ),

      centerTitle: true,
     

    );
    
  }