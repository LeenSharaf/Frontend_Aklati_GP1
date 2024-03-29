import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
  // required Key key,
  required this.iconSrc,
  required  this.title,
  required  this.press,
  });
  // : super(key: key);
  final String iconSrc, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = 10;
    return InkWell(
      onTap: press(),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: defaultSize * 2, vertical: defaultSize * 3),
        child: SafeArea(
          child: Row(
            children: <Widget>[
              SvgPicture.asset(iconSrc),
              SizedBox(width: defaultSize * 2),
              Text(
                title,
                style: TextStyle(
                  fontSize: defaultSize * 1.6, //16
                  color: Color(0xFF7286A5),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: defaultSize * 1.6,
                color: Color(0xFF7286A5),
              )
            ],
          ),
        ),
      ),
    );
  }
}