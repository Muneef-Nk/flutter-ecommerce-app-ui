import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: 100,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey
            ),
          )
        ],
      ),
    );
  }
}
