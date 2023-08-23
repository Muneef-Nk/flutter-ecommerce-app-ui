import 'package:flutter/material.dart';

import '../../widgets/black_button.dart';
import 'components/forgot_back_btn.dart';

class Forgot extends StatelessWidget {
  const Forgot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Forgot_btn(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Forgot password?',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Enter email associated with your account and we’ll send and email with intructions to reset your password",
              style: TextStyle(
                fontSize: 14,
                height: 2,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                width: 310,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, spreadRadius: .4, blurRadius: 1)
                    ]),
                child: Center(
                  child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'enter your email here',
                          prefixIcon: Icon(Icons.email_outlined),
                          border: InputBorder.none)),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
                child: BlackButton(
              label: 'RESET',
              onClicked: () => Navigator.pushNamed(context, "verification"),
            ))
          ],
        ),
      ),
    );
  }
}
