import 'package:flutter/material.dart';




/*class Utils {
  static void showSnackBar(BuildContext context, {required String title}) =>
        ..removeCurrentSnackBar()
         ..showSnackBar(SnackBar(content: Text(title)));
}*/

class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => IconButton(
       onPressed: () => {
                      showSimpleDialog(context),

            },
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
      );

  void showSimpleDialog(BuildContext context) => showDialog(
        builder: (context) => SimpleDialog(
          title: const Text('Select Option'),
          children: <Widget>[
            SimpleDialogOption(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              onPressed: () {
                title: 'Selected Option 1';
                Navigator.pop(context);
              },
              child: Text('Page Name', style: TextStyle(fontSize: 16)),
            ),
            SimpleDialogOption(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Text('High Evaluate', style: TextStyle(fontSize: 16)),
              onPressed: () {
                title: 'Selected Option 2';
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Text('Option 3', style: TextStyle(fontSize: 16)),
              onPressed: () {
                 title: 'Selected Option 3';
                Navigator.pop(context);
              },
            ),
          ],
        ), context: context,
      );
}