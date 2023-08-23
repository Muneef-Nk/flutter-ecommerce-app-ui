import 'package:flutter/material.dart';

import '../../../models/recommendedModel.dart';

class Recommended extends StatelessWidget {
  const Recommended({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          itemCount: recommendedModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(20),
              width: 213,
              height: 66,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 66,
                    height: 66,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset(recommendedModel[index].image),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recommendedModel[index].name,
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(height: 15),
                      Text(
                        recommendedModel[index].price,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}