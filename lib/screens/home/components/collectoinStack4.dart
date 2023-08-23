import 'package:flutter/material.dart';

import '../../../models/collection.dart';
import '../../../utilities/colors.dart';

class CollectionStack4 extends StatelessWidget {
  const CollectionStack4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(

            width: 340,
            height: 200,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: homeContainer,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60,top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text( collection[4].name, style: TextStyle(fontSize: 13, color: Color(0xffbac737680)),),
                          SizedBox(height: 20,),
                          Text(collection[4].des, style: TextStyle(fontSize: 18, color: Color(0xffbac1D1F22))),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: homeContainer,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50,top: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(collection[3].name, style: TextStyle(fontSize: 13, color: Color(0xffbac737680)),),
                          SizedBox(height: 20,),
                          Text(collection[3].des, style: TextStyle(fontSize: 18, color: Color(0xffbac1D1F22))),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              top: 0,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(collection[4].image, fit: BoxFit.fitHeight,))
          ),
          Positioned(
              bottom: 0,
              top: 0,
              right: 0,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(collection[3].image, fit: BoxFit.fitHeight,))
          )
        ]
    );
  }
}