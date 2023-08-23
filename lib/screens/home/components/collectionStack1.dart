import 'package:flutter/material.dart';

import '../../../models/collection.dart';
import '../../../utilities/colors.dart';
import 'circle_container.dart';

class CollectionStack1 extends StatelessWidget {
  const CollectionStack1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children:[
          Container(
            padding: EdgeInsets.only(top: 5, right: 10),
            width: double.infinity,
            height: 160,
            color: homeContainer,
            child:  Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                  Text(collection[0].name, style: TextStyle(fontSize: 13, color: Color(0xffbac737680)),),
                  SizedBox(height: 25,),
                  Text(collection[0].des, style: TextStyle(fontSize: 17, color: Color(0xffbac1D1F22)),),
                ],
              ),
            ),
          ),
          Positioned(
              top: 10,
              right: 10,
              child: CircleContainer()),
          Positioned(
              right: 18,
              child: Image.asset(collection[0].image))


        ]
    );
  }
}