import 'package:flutter/material.dart';

import '../../widgets/black_button.dart';
import '../../widgets/social_icon_row.dart';
import 'components/login_or_signup.dart';

class SignUp extends StatelessWidget {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _conPasswordController = TextEditingController();

  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 50, right: 32, left: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              space(30),
              title_login_signup(loginStatus: isLogin),
              space(30),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'Enter your name'),
              ),
              space(20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(hintText: 'Email address'),
              ),
              space(20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              space(20),
              TextFormField(
                controller: _conPasswordController,
                decoration: InputDecoration(hintText: 'Confirm password'),
              ),
              space(40),
              Center(
                child: BlackButton(
                  label: 'SIGN UP',
                  onClicked: () => Navigator.pushNamed(context, "homeRoot"),
                ),
              ),
              space(20),
              Center(
                  child: Text(
                "or sign up with",
                style: TextStyle(fontSize: 12),
              )),
              space(10),
              social_icon_row(),
              LoginOrSignUp(
                loginStatus: isLogin,
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox space(double val) {
    return SizedBox(height: val);
  }
}
