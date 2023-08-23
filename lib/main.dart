import 'package:flutter/material.dart';
import 'package:shopping_app/home_root.dart';
import 'package:shopping_app/screens/forgot/create_new_password.dart';
import 'package:shopping_app/screens/forgot/verification.dart';
import 'package:shopping_app/screens/forgot/screen_forgot.dart';
import 'package:shopping_app/screens/home/screen_home.dart';
import 'package:shopping_app/screens/login_signup/screen_login.dart';
import 'package:shopping_app/screens/login_signup/screen_signup.dart';
import 'package:shopping_app/screens/search/screen_search.dart';
import 'package:shopping_app/screens/welcome/intro.dart';
import 'package:shopping_app/screens/welcome/screen_welcome.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "welcome":(context)=>Welcome(),
        "intro":(context)=>Intro(),
        "signUp":(context)=>SignUp(),
        "login":(context)=>Login(),
        "forgot":(context)=>Forgot(),
        "verification":(context)=>Verification(),
        "newPassword":(context)=>NewPassword(),
        "homeRoot":(context)=>HomeRoot(),
        "home":(context)=>ScreenHome(),
        "search":(context)=>ScreenSearch(),
      },
      home: Welcome(),
    );
  }
}
