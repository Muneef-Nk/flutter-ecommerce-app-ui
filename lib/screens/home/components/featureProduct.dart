import 'package:flutter/material.dart';

import '../../../models/feature.dart';
import '../../../utilities/colors.dart';

class FeatureProduct extends StatelessWidget {
  const FeatureProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Container(
        // padding: EdgeInsets.only(left: 30),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featureProducts.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    margin: EdgeInsets.only(right: 10, left: 10),
                    height: 170,
                    width: 126,
                    decoration: BoxDecoration(
                        color: lightGrey,
                        borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          featureProducts[index].img,
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      featureProducts[index].name,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff1D1F22),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      featureProducts[index].price,
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}