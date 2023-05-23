
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[200],
               // fit: BoxFit.fill, 

      ),


      child: Image.asset(
        imagePath,
        height: 40,

      ),
    );
  }
}




class Square extends StatelessWidget {
  final String imagePath;
  const Square({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
      padding: EdgeInsets.all(5),
      //decoration: BoxDecoration(
       // border: Border.all(color: Colors.white),
        //borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
     // ),
      child: Image.asset(
        imagePath,
        height: 255,
        //width: double.infinity,
      ),
    );
  }
}