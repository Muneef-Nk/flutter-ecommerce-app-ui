import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/social_container.dart';

class social_icon_row extends StatelessWidget {
  const social_icon_row({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialContainer('assets/icons/Apple.svg'),
        SocialContainer('assets/icons/Google.svg'),
        SocialContainer('assets/icons/Vector.svg'),
      ],
    );
  }
}