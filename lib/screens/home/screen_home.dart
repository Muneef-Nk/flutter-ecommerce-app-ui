import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../models/title.dart';
import '../../utilities/colors.dart';
import 'components/CategoryHead.dart';
import 'components/collectionStack1.dart';
import 'components/collectionStack2.dart';
import 'components/collectionStack3.dart';
import 'components/collectoinStack4.dart';
import 'components/featureProduct.dart';
import 'components/recommended.dart';

class ScreenHome extends StatefulWidget {
  @override
  State<ScreenHome> createState() => _ScreenHome();
}

class _ScreenHome extends State<ScreenHome> {
  int isSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // color: Colors.red,
              // padding: EdgeInsets.only(left: 40),
              height: 90,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return topIconContainer(index);
                  },
                  itemCount: title.length,
                ),
              ),
            ),
            SizedBox(height: 25),
            Stack(children: [
              Container(
                width: 320,
                height: 168,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[300]),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/home_image.png',
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                  right: 6,
                  top: 20,
                  child: Text(
                    "Autumn \nCollection \n2021",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  )),
            ]),
            SizedBox(
              height: 20,
            ),
            CategoryHeading(
              label: 'Feature Products',
            ),
            SizedBox(
              height: 20,
            ),
            FeatureProduct(),
            CollectionStack1(),
            SizedBox(
              height: 20,
            ),
            CategoryHeading(
              label: "Recommended",
            ),
            Recommended(),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 15,
            ),
            CategoryHeading(
              label: "Top Collection",
            ),
            SizedBox(
              height: 20,
            ),
            CollectionStack2(),
            SizedBox(
              height: 20,
            ),
            CollectionStack3(),
            SizedBox(
              height: 20,
            ),
            CollectionStack4()
          ],
        ),
      ),
    );
  }

  Widget topIconContainer(int index) {


    return GestureDetector(
      onTap: () {
        setState(() {
          isSelectedIndex = index;
        });
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            padding: EdgeInsets.all(3),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                // color: Color(0xff3A2C27),
                border: Border.all(
                  color: isSelectedIndex == index
                      ? Color(0xff3A2C27)
                      : Colors.white,
                  width: 1.5,
                )),
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: isSelectedIndex == index
                    ? SelectedColor
                    : IconUnSelectedColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: SvgPicture.asset(
                title[index].image,
                color: isSelectedIndex == index ? Colors.white : Colors.grey,
                width: 12,
                height: 20,
              )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title[index].title,
            style: TextStyle(
                fontSize: 10,
                color: isSelectedIndex == index
                    ? SelectedColor
                    : TextUnSelectedColor),
          )
        ],
      ),
    );
  }
}
