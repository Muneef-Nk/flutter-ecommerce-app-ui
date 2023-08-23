import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class BlackButton extends StatelessWidget {
  final String label;
  final Function onClicked;
   // final bool isButtonActive1;
   // final bool isButtonActive2;

  BlackButton({
    required this.label,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked();
      },
      child: Container(
        width: 147,
        height: 51,
        decoration: BoxDecoration(
          // color: (isButtonActive1 && isButtonActive2)
          //     ? Colors.black
          //     : IconUnSelectedColor,
          color: Colors.black,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
            child: Text(
          label,
          style: TextStyle(fontSize: 16, color: Colors.white),
        )),
      ),
    );
  }
}
