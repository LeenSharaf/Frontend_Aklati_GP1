import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import 'package:roaa/models/order.dart';
import 'package:roaa/providers/AppProvider.dart';

import 'inprogress.dart';

class cartcus extends StatelessWidget {
  final Order order;
  const cartcus({
    Key? key,
    required this.order,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        //  for (int i = 1; i < 5;i++)
        Container(
          child: Row(
            children:  [
              SizedBox(
                height: 80,
              ),
              Icon(
                Icons.person,
                color: Color.fromARGB(255, 146, 14, 14),
                size: 19,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Customer Name : ",
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 15, 119, 105),
                      fontWeight: FontWeight.bold)),
              Text(order.username,
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 146, 14, 14),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          child: Row(
            children:  [
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.phone,
                color: Color.fromARGB(255, 146, 14, 14),
                size: 19,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Phone number : ",
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 15, 119, 105),
                      fontWeight: FontWeight.bold)),
              Text(order.phone.toString(),
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 146, 14, 14),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),

        Container(
          child: Row(
            children:  [
              SizedBox(
                height: 80,
              ),
              Icon(
                Icons.phone,
                color: Color.fromARGB(255, 146, 14, 14),
                size: 19,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Address : ",
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 15, 119, 105),
                      fontWeight: FontWeight.bold)),
              Text(order.address,
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 146, 14, 14),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          child: Row(
            children:  [
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.production_quantity_limits,
                color: Color.fromARGB(255, 146, 14, 14),
                size: 19,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Item Name : ",
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 15, 119, 105),
                      fontWeight: FontWeight.bold)),
              Text(order.itemName??'',
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 146, 14, 14),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),

        Container(
          child: Row(
            children:  [
              SizedBox(
                height: 80,
              ),
              Icon(
                Icons.numbers,
                color: Color.fromARGB(255, 146, 14, 14),
                size: 19,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Quantity : ",
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 15, 119, 105),
                      fontWeight: FontWeight.bold)),
              Text(order.count.toString(),
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 146, 14, 14),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),

        Container(
          child: Row(
            children:  [
              SizedBox(
                height: 40,
              ),
              Icon(
                Icons.format_align_center,
                color: Color.fromARGB(255, 146, 14, 14),
                size: 19,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Size : ",
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 15, 119, 105),
                      fontWeight: FontWeight.bold)),
              Text(order.size,
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 146, 14, 14),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          child: Row(
            children:  [
              SizedBox(
                height: 80,
              ),
              Icon(
                Icons.note_alt,
                color: Color.fromARGB(255, 146, 14, 14),
                size: 19,
              ),
              SizedBox(
                width: 5,
              ),
              Text("Notes : ",
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 15, 119, 105),
                      fontWeight: FontWeight.bold)),
              Text(order.note,
                  style: TextStyle(
                      fontSize: 19.0,
                      color: Color.fromARGB(255, 146, 14, 14),
                      fontWeight: FontWeight.bold)),
            ],
          ),
        ),

        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () async{
                await Provider.of<AppProvider>(context,listen: false).rejectOrder(order);
                
              },
              icon: Icon(Icons.cancel),
              label: Text(
                'Cancel',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 146, 14, 14),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            ElevatedButton.icon(
              onPressed: ()async {
                await Provider.of<AppProvider>(context,listen:false).acceptOrder(order);
              },
              icon: Icon(Icons.done),
              label: Text(
                'Accept',
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 15, 119, 105),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
            ),
          ],
        ),
        //                 
      ],
    );
  }
}
