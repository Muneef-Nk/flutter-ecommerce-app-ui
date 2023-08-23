import 'package:flutter/material.dart';

import '../../widgets/black_button.dart';
import '../../widgets/social_icon_row.dart';
import 'components/login_or_signup.dart';


class Login extends StatelessWidget {


  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isLogin=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 50, right: 32, left: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            space(30),
            title_login_signup(loginStatus: isLogin),
            space(30),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(hintText: 'Email address'),
            ),
            space(20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(hintText: 'Password'),
            ),
            space(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "forgot");
                  },
                    child: Text('Forgot Password?'))
              ],
            ),
            space(30),
            Center(child: BlackButton(label: ' LOGIN', onClicked: ()=>Navigator.pushNamed(context, "homeRoot"),)),
            space(20),
            Center(child: Text("or log in with", style: TextStyle(fontSize: 12),)),
            space(20),
            social_icon_row(),
            space(80),
            LoginOrSignUp(loginStatus: isLogin,)
          ],
        ),
      ),
    );
  }
  SizedBox space(double val) {
    return SizedBox(height: val);
  }
}
