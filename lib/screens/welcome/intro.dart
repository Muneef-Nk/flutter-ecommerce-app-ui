// ignore_for_file: unused_import

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login_signup/screen_signup.dart';

import '../../models/intro.dart';
import '../../utilities/colors.dart';
import 'components/intro_button.dart';

class Intro extends StatefulWidget {
  @override
  State<Intro> createState() => _Intro1State();
}

class _Intro1State extends State<Intro> {

List images=[
  'assets/images/w2.png',
  'assets/images/w3.png',
  'assets/images/w4.png',
];
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 351,
              color: darkGrey,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Text(
                 intro[_current].title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 17),
                Text(
                  intro[_current].subTitle,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      enableInfiniteScroll: false,
                      height: 368,
                      enlargeFactor: .4,
                      enlargeCenterPage: true
                      ,
                      onPageChanged: (i, reason) {
                        setState(() {
                          _current = i;
                          print(i);
                        });
                      }),
                  items: images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          padding:
                              EdgeInsets.only(top: 19, left: 21, right: 23),
                          width: 261,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: lightGrey),
                          child: Image.asset('$i'),
                        );
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: intro.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Container(
                        width: 10,
                        height: 10,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.white)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.1)),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 20,
                ),
                IntroBtn(
                    label: 'Shopping now',
                    onClicked: (){
                      Navigator.pushNamed(context, 'signUp');
                      print('you clicked');
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
