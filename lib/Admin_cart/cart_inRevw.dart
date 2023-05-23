import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'details.dart';

class cartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
     // SizedBox(height: 30),
          Container(
            height: 120,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 65,
                  margin: EdgeInsets.only(right: 7,bottom: 30),
                  child:
                      CircleAvatar(child: Image.asset("lib/imag/imag1(1).png"),backgroundColor: 
                      Color.fromARGB(255, 24, 167, 148),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                       SizedBox(
                                        height: 8,

                                      ),
                      Text(
                        "Chocolate cake",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 146, 14, 14)),
                      ),
                       SizedBox(
                                        height: 13,
                                      ),
                      Text(
                        "10 ILS",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                           color: Color.fromARGB(255, 146, 14, 14)),
                      ),
                        // SizedBox(
                        //                 height: 10,
                        //               ),
                        //                  Text(
                        //         "Order Status", 
                        //         style: TextStyle(
                        //           fontSize: 18,
                        //           color: Color.fromARGB(255, 24, 167, 148),
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                    ],
                  ),
                ),
                Spacer(),
               
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        //   RatingBar.builder(
                        //   initialRating: 4,
                        //   minRating: 1,
                        //   direction: Axis.horizontal,
                        //   itemCount: 5,
                        //   itemSize: 16,
                        //   itemPadding: EdgeInsets.symmetric(horizontal: 2),
                        //   itemBuilder: ((context, _) => Icon(
                        //         Icons.star_border,
                        //         color: Color.fromARGB(255, 146, 14, 14),
                        //       )),
                        //   onRatingUpdate: (index) {},
                        // ),
                        SizedBox(height: 5,),
                      Row( 
                        children: [ 
                       //   SizedBox(height: 80,),
                              ElevatedButton(
              onPressed: () {
                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Details(
                                            
                                          )));
              },
             child: Text(
                'Details',
                style: TextStyle(fontSize: 16),
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
                          
                        ]),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          
      ],
    );
  }
}