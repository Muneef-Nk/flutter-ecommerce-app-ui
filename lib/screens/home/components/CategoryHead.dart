import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';
class CategoryHeading extends StatelessWidget {
  final String label;

  const CategoryHeading({
    required this.label,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          Text(
            'Show all',
            style: TextStyle(
                fontSize: 15,
                color: shawAll,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}