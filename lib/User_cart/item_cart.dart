import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:roaa/User_cart/OrderWidget.dart';
import 'package:roaa/providers/AppProvider.dart';

import '../constran.dart';

class cartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

 








    // Future _getUser(String text) async {
    //   setState(() {
    //     //searching = true;
    //   });
    // }

    int count = 0;
//     void add() {
//   setState(() {
//     if (count != 10) count++;
//   });
// }

    return Consumer<AppProvider>(
      builder: (context,provider,x) {
        double sum=0.0;
        provider.userOrders.where((element) => element.status!='done').toList().forEach((element) {
          sum+=element.price-(element.price*element.discount/100);
        },);
        return Column(
          children: [
            //for (int i = 1; i < 3; i++)
              Expanded(child: ListView.builder(itemBuilder: ((context, index) => OrderWidget(order:provider.userOrders[index], )),itemCount: provider.userOrders.length,)),
            Padding(
                padding: EdgeInsets.only(top: 149, left: 20, right: 20),
                child: Container(
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Total",
                                  style: TextStyle(
                                    color:
                                        Colors.white, //fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  )),
                              SizedBox(height: 8),
                              Text(
                                '${sum} ILS',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ]),
                        Container(
                            // decoration: BoxDecoration(
                            //   border: Border.all(color: Colors.green.shade200),
                            //   borderRadius: BorderRadius.circular(28),
                            // ),
                            //padding: const EdgeInsets.all(12),
                            // child: Row(
                            //   children: const [
                            //     Text(
                            //       'Pay Now',
                            //       style: TextStyle(color: Colors.white),
                            //     ),
                            //     Icon(
                            //       Icons.arrow_forward_ios,
                            //       size: 16,
                            //       color: Colors.white,
                            //     ),
                            //   ],
                            // ),
                            ),
                      ],
                    )))
          ],
        );
      }
    );
  }
}
