import 'package:flutter/material.dart';

import 'components/intro_button.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/w1.png',
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6), BlendMode.darken),
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Fluxstore!',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text('The home for a fashionista',
                  style: TextStyle(fontSize: 16, color: Colors.white)),
              SizedBox(
                height: 50,
              ),
              IntroBtn(
                  label: 'Get Started',
                  onClicked: () {
                    Navigator.pushNamed(context, "intro");
                    print('go to intro screen ');
                  })
            ],
          ),
        )
      ]),
    );
  }
}
