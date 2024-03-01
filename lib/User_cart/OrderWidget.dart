import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';

import 'package:roaa/models/order.dart';
import 'package:roaa/providers/AppProvider.dart';

import '../constran.dart';

class OrderWidget extends StatelessWidget {
  final Order order;
  const OrderWidget({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
            height: 130,
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
                    child: Image.network(order.img??'',fit: BoxFit.cover,width: 65,height: 60,),
                    
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
                        order.itemName??'',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 146, 14, 14)),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        (order.price-(order.price*order.discount/100)).toString() + " ₪"+  "-"+  "Dis : " +order.discount.toString()+ "%",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 146, 14, 14)),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        order.status,
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
                
                // Padding(
                //   padding: EdgeInsets.symmetric(vertical: 0,horizontal: 2),
                  
                //   
                //child:
                 Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(height: 1,),
                      order.status=="inReview"?
                      Row(children: [
                      
                        IconButton(onPressed: (){
                          Provider.of<AppProvider>(context,listen: false).quantity=order.count;
                          Provider.of<AppProvider>(context,listen: false).currentOrder=order;
                       _dialogBuilder(context);

                        }, icon:  Icon(
                          Icons.edit,
                          color: kPrimaryColor,
                          size: 18,
                        ),
                        padding: EdgeInsets.only(left: 70),),
                      // Padding(padding: EdgeInsets.only(right: 20)),
                        // SizedBox(
                        //   width: 10,
                        // ),
                       // SizedBox(width: 2,),
                        IconButton(onPressed: (){

                        }, icon:  Icon(
                          Icons.delete,
                          color: kPrimaryColor,
                          size: 18,
                        ),),
                 //    Padding(padding: EdgeInsets.only(bottom: 2))
                      ],
                      ):Center(),
                      //Padding(padding: EdgeInsets.only(bottom: 2)),
                      //SizedBox(height: 1,),
                    //  Padding(padding: EdgeInsets.only(bottom:2)),
                      order.status=="done"?
                      RatingBar.builder(
                        initialRating: order.rate.toDouble(),
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 16,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2),
                        itemBuilder: ((context, _) => Icon(
                              Icons.star_border,
                              color: kPrimaryColor,
                            )),
                        onRatingUpdate: (index) async{
                           await Provider.of<AppProvider>(context,listen: false).rateItem(order,index);
                        }
                      ):Center(),
                      Padding(padding: EdgeInsets.only(bottom: 6)),
                      SizedBox(height: 1,),
                     
                    ],
                  ),
              //  ),
              ],
            ),
          );
  }
}
Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog( 
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.0,
              ),
            ),
          ),
           contentPadding: const EdgeInsets.only(
            top: 10.0,
          ),
             title: Text(
            "Do you want to add a note on the item ?",
            style: TextStyle(fontSize: 24.0),
          ),  content: Container(
            height: 400,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Consumer<AppProvider>(
                builder: (context,provider,x) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Mension Your Notes ",
                        ),
                      ),
                                        Container(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: Provider.of<AppProvider>(context).notesController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter Notes here',
                              labelText: 'Notes'),
                  )),
                  SizedBox(height: 20),
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Text(
            "   Do you want to change \n   the quantity?",
             style: TextStyle(fontSize: 24.0 , fontWeight: FontWeight.bold,),
             
          ),
             SizedBox(height: 20,),
                   Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                            children: [
                              Container(
                                
                                  width: 30,
                                  height: 30,
                                  margin: const EdgeInsets.all(2.0),
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            color: kPrimaryColor,
                                            spreadRadius: 1,
                                            blurRadius: 1)
                                      ]),
                                  child: IconButton(
                                      onPressed: () {
                                        provider.editQuantity(provider.quantity+1);
                                      },
                                      icon: Icon(
                                        CupertinoIcons.plus,
                                        size: 16,
                                        color: Colors.white,
                                      ))),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                child: Text(
                                  provider.quantity.toString(),
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: kPrimaryColor),
                                ),
                              ),
                              Container(
                                  width: 30,
                                  height: 30,
                                  margin: const EdgeInsets.all(2.0),
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                            color: kPrimaryColor,
                                            spreadRadius: 1,
                                            blurRadius: 1)
                                      ]),
                                  child: IconButton(
                                      onPressed: () {
                                        provider.editQuantity(provider.quantity-1);
                                      },
                                      icon: Icon(
                                        CupertinoIcons.minus,
                                        color: Colors.white,
                                        size: 16,
                                      ))),
                            ],
                          ),
                          SizedBox(height: 20,),
                  Row(children: [
                    SizedBox(width: 70,),
                    Container(
                        width: 110,
                        height: 60,
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                            // fixedSize: Size(250, 50),
                          ),
                          child: Text(
                            "Cancel",style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                   Container(
                        width: 110,
                        height: 60,
                       
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: ()async {
                            await provider.editOrder();
                            Navigator.of(context).pop();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: kPrimaryColor,
                            // fixedSize: Size(250, 50),
                          ),
                          child: Text(
                            "Save",style: TextStyle(fontSize: 17)
                          ),
                        ),
                      ), ],),
                    
                     ]
                    );
                }
              ))),




        );
      },
    );
  }