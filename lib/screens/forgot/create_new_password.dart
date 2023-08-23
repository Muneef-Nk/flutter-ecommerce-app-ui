import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/black_button.dart';

import '../../utilities/colors.dart';
import 'components/forgot_back_btn.dart';

class NewPassword extends StatefulWidget {
  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool isButtonActive1 = false;
  bool isButtonActive2 = false;

  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _conPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Forgot_btn(),
              SizedBox(height: 40),
              Text(
                'Create new password',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Your new password must be different from previously used password',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                onChanged: (e) {
                  if (e.isNotEmpty && e.length>=8) {
                    setState(() {
                      isButtonActive1 = true;
                    });
                  } else {
                    setState(() {
                      isButtonActive1 = false;
                    });
                  }
                },
                controller: _newPasswordController,
                decoration: InputDecoration(hintText: 'New Password'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (e) {
                  if (e.isNotEmpty && e.length>=8) {
                    setState(() {
                      isButtonActive2 = true;
                    });
                  } else {
                    setState(() {
                      isButtonActive2 = false;
                    });
                  }
                },
                controller: _conPasswordController,
                decoration: InputDecoration(hintText: 'Confirm Password'),
              ),
              SizedBox(
                height: 70,
              ),

              Center(
                child: BlackButton(label: "Confirm", onClicked: (){
                  if (isButtonActive1 == true && isButtonActive2 == true) {
                    print('true');
                    passwordChanged(context);
                  } else {
                    print('false');
                  }
                }),
              ),

            ],
          ),
        ),
      ),
    );
  }

  passwordChanged(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return Container(
            height: 360,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 100,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey[50], shape: BoxShape.circle),
                  child: Image.asset('assets/images/bottumSheetShape.png'),
                ),
                SizedBox(
                  height: 20,
                ),

                Text(
                  'Your password has been changed',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff332218)),
                ),SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome back! Discover now!',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700], letterSpacing: .7),
                ),SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "homeRoot");
                  },
                  child: Container(
                    width: 315,
                    height: 51,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                        child: Text(
                      'Browse home',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
          );
        });
  }
}
