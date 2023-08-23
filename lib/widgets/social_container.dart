import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SocialContainer extends StatelessWidget {
  final String icon;
  SocialContainer(this.icon);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        //passed function here
      },
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: 42,
        height: 42,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey)
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}