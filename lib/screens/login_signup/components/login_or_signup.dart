import 'package:flutter/material.dart';


class LoginOrSignUp extends StatelessWidget {
  final loginStatus;

  const LoginOrSignUp({
    super.key,
    this.loginStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          loginStatus ? "Don’t have an account?" : 'Already have account?',
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        TextButton(
          onPressed: () {
            loginStatus
                ?  Navigator.pushNamed(context, "signUp")
                : Navigator.pushNamed(context, "login");

          },
          child: Text(loginStatus ? 'Sign Up' : 'Log In',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  decoration: TextDecoration.underline)),
        )
      ],
    );
  }
}


// login and sign up screen title

class title_login_signup extends StatelessWidget {
  final loginStatus;

  const title_login_signup({
    super.key,
    this.loginStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      loginStatus ? "Log in\nyour account": "Create\nyour account",
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black, height: 1.2),
    );
  }
}