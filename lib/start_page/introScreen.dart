import 'package:flutter/material.dart';
import 'package:test_homee/constran.dart';
import 'package:test_homee/customer/LogIn.dart';
import 'package:test_homee/customer/loginfor_smalluser.dart';
import 'package:test_homee/start_page/helper.dart';


class IntroScreen extends StatefulWidget {
  //static const routeName = "/introScreen";

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  var _controller;
  late int count;
  final List<Map<String, String>> _pages = [
    {
      "image": "lib/images/vector1.png",
      "title": "Find Food You Love",
      "desc":
          "Discover the best homemade foods from several places and several types"
    
    },
    {
      "image": "lib/images/vector2.png",
      "title": "Order Now",
      "desc": "You can order it and we can Deliver it to you"
    },
    /*{
      "image": "lib/images/vector3.png",
      "title": "Live Tracking",
      "desc":
          "Real time tracking of your food on the app once you placed the order"
    },*/
  ];

  @override
  void initState() {
    _controller = new PageController();
    count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Spacer(),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (value) {
                      setState(() {
                        count = value;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(
                          _pages[index]["image"]!,);
                    },
                    itemCount: _pages.length,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          count == 0 ? Color.fromARGB(255, 204, 24, 24) :   Color(0xFFB6B7B7),

                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor:
                          count == 1 ? Color.fromARGB(255, 204, 24, 24) : Color(0xFFB6B7B7),
                    ),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    // CircleAvatar(
                    //   radius: 5,
                    //   backgroundColor:
                    //       count == 2 ? Color.fromARGB(255, 204, 24, 24) : Color(0xFFB6B7B7),
                    // )
                  ],
                ),
                Spacer(),
                Text(
                  _pages[count]["title"]!,
                  style: Helper.getTheme(context).titleLarge,
                ),
                  SizedBox(
                      height: 5,
                    ),
                Text(
                  _pages[count]["desc"]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 204, 24, 24),
           
),

         
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginUser(),
                        )
                      );
                      },
                      child: Text("LogIn As Admin")),
                ),
                Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 204, 24, 24),
           
),

         
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )
                      );
                      },
                      child: Text("LogIn As user")),
                ),
                                Spacer(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}