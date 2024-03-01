import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roaa/Admin_cart/OrderAWidget.dart';
import 'package:roaa/providers/AppProvider.dart';


import '../constran.dart';
import 'cart_inRevw.dart';

class inRev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context,provider,x) {
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
            Expanded(
              child: ListView.builder(itemBuilder: (context,index){
                return OrderAWidget(order: provider.userOrdersForReview[index]);
              },itemCount: provider.userOrdersForReview.length,),
            ),
           Container(//decoration: BoxDecoration
          // (borderRadius: BorderRadius.circular(10))
           margin: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
           padding: EdgeInsets.all(10),
           child: Row(children: [
            Container(decoration: BoxDecoration(color: Color.fromARGB(255, 146, 14, 14),
            borderRadius: BorderRadius.circular(20)),)
           ],),)],),
           
          
           
           )
          ],
          ),
         // bottomNavigationBar: cartBottom(),
         
          );
      }
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
        "Order Review",
        style:
            TextStyle(color: Colors.white, fontFamily: "Mulish-VariableFont"),
      ),

      centerTitle: true,
     

    );
    
  }








