import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/screens/forgot/screen_forgot.dart';
import 'package:shopping_app/screens/home/screen_home.dart';
import 'package:shopping_app/screens/search/screen_search.dart';
import 'package:shopping_app/utilities/colors.dart';

import 'models/drawerModel.dart';

class HomeRoot extends StatefulWidget {
  @override
  State<HomeRoot> createState() => _HomeRootState();
}

class _HomeRootState extends State<HomeRoot> {
  List<Widget> pages = [
    ScreenHome(),
    ScreenSearch(),
    Text('my order'),
    Text('Profile'),
    Text('setting'),
    Text('support'),
    Text('about us'),
  ];
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Fluxstore',
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
                print('you clicked');
              },
              icon: SvgPicture.asset("assets/icons/menu.svg"));
        }),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/notification.svg"))
        ],
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'DrawerHeader',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'sunieux@gmail.com',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 30),
              SizedBox(
                 // height: 400,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: drawerModel.length,
                    itemBuilder: (context, index) {
                      return drawerCard(index);
                    }),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 30),
              //   child: Text(
              //     "OTHER",
              //     style: TextStyle(fontSize: 14, color: Color(0xffbac777E90)),
              //   ),
              // ),

              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 227,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/icons/light.svg"),
                              Text("Light", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )

            ],
          )),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: lightGrey,
                blurRadius: 2,
                spreadRadius: 1,
              )
            ],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            bottomItems(icon: "assets/icons/home.svg", index: 0),
            bottomItems(icon: "assets/icons/search.svg", index: 1),
            bottomItems(icon: "assets/icons/shop.svg", index: 2),
            bottomItems(icon: 'assets/icons/Profile.svg', index: 3),
          ],
        ),
      ),
      body: pages[currentIndex],
    );
  }



  Widget drawerCard(int index) {
    return GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Card(
          elevation: 0,
          margin: EdgeInsets.only(bottom: 8, right: 10, left: 10),
          color: currentIndex == index ? IconUnSelectedColor : Colors.white,
          child: ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                drawerModel[index].icon,
                color: currentIndex == index ? Colors.black : drawerUnSelected,
              ),
            ),
            title: Text(
              drawerModel[index].label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: currentIndex == index ? Colors.black : drawerUnSelected,
              ),
            ),
          ),
        ));
  }

  Widget bottomItems({required String icon, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Container(
        width: 21,
        height: 21,
        child: SvgPicture.asset(icon,
            color: currentIndex == index ? Colors.black : lightGreyBtn),
      ),
    );
  }
}
