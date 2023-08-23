import 'package:flutter/material.dart';

import '../../../models/collection.dart';
import '../../../utilities/colors.dart';
import 'circle_container.dart';

class CollectionStack3 extends StatelessWidget {
  const CollectionStack3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Container(
            margin: EdgeInsets.only(left: 20, right: 20,),
            padding: EdgeInsets.only(top: 5, right: 10),
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
                color: homeContainer,
                borderRadius: BorderRadius.circular(20)
            ),
            child:  Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                  Text(collection[2].name, style: TextStyle(fontSize: 13, color: Color(0xffbac737680)),),
                  SizedBox(height: 25,),
                  Text(collection[2].des, style: TextStyle(fontSize: 17, color: Color(0xffbac1D1F22)),),
                ],
              ),
            ),
          ),
          Positioned(
              top: 10,
              right: 30,
              child: CircleContainer()),
          Positioned(
              top: -16,
              bottom: 0,
              right: 30,
              child: Image.asset(collection[2].image))


        ]
    );
  }
}