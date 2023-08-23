import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';


class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: CicleContainer.withOpacity(.7)),
      child: Center(
        child: Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: CicleContainer),
        ),
      ),
    );
  }
}
