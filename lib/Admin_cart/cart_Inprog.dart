import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:roaa/providers/AppProvider.dart';


class cartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Consumer<AppProvider>(
      builder: (context,provider,x) {
        return Expanded(
          child: Column(
            children: [
              
                Expanded(child: ListView.builder(itemBuilder: (context,index){
                  return Container(
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
                        margin: EdgeInsets.only(right: 7, bottom: 30),
                        child: CircleAvatar(
                          child: Image.network(provider.userOrdersForDelivery[index].img!),
                          backgroundColor: Color.fromARGB(255, 24, 167, 148),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              provider.userOrdersForDelivery[index].itemName??'',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 146, 14, 14)),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              provider.userOrdersForDelivery[index].price.toString(),
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 146, 14, 14)),
                            ),
                            SizedBox(
                              width: 90,height: 10,
                            ),
                           // Padding(padding: EdgeInsets.only(left: 40,right: 60)),
                             Text(
                              provider.userOrdersForDelivery[index].status,
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 24, 167, 148),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                           
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                         
                             
                              Icon(
                                Icons.delete,
                                color: Color.fromARGB(255, 146, 14, 14),
                                size: 18,
                              ),
                         
        
                           
                               // Padding(padding: EdgeInsets.only(left: 40)),
                               
                             
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
                    onPressed: () async{
                      provider.finishOrder(provider.userOrdersForDelivery[index]);

                      //  Navigator.push(
                      //                   context,
                      //                   MaterialPageRoute(
                      //                       builder: (context) => Details(
                                                  
                      //                           )));
                    },
                   child: Text(
                      'Done',
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
                );
                },itemCount: provider.userOrdersForDelivery.length,))
             
            ],
          ),
        );
      }
    );
  }
}
