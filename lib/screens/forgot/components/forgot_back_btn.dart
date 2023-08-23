import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Forgot_btn extends StatelessWidget {
  const Forgot_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(11),
        width: 36,
        height: 36,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xffDDDDDD),
                blurRadius: 1.0,
                spreadRadius: 1.0,
                offset: Offset(0.0, 3.0),//extend the shadow
              ),
            ]
        ),
        child: SvgPicture.asset('assets/icons/back.svg',),
      ),
    );
  }
}
