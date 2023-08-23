import 'package:flutter/material.dart';



class IntroBtn extends StatelessWidget {

  final String label;
  final void Function() onClicked;

  const IntroBtn({super.key, required this.label, required this.onClicked});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:(){
        onClicked();
      },
      child: Container(
        width: 201,
        height: 53,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color:Colors.grey.shade600.withOpacity(0.8),
            border: Border.all(color: Colors.white)
        ),
        child: Center(child: Text(label, style: TextStyle(color: Colors.white, fontSize: 16),)),
      ),
    );
  }
}