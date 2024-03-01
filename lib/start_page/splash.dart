import 'dart:async';


import 'package:flutter/material.dart';


import '../constran.dart';
import '../uitls/helper.dart';
import 'introScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 8000), () {
       Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroScreen(),
                        )
                      );
                    
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: kPrimaryColor,
              // child: Image.asset(
              //  "lib/icons/splashIcon.png",
              //   fit: BoxFit.fill,
              // ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "lib/icons/aklati-03.png", 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
