import 'package:flutter/material.dart';
import 'package:foodiex/colors.dart';
import 'package:foodiex/sign_up_screen/components/signup_fom.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Complete  Your Profile",
                // style: Hea
              ),
              Text(
                "complete your details with Name,Password \n  Emaild and Confirm Password ",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              CompleteProfileForm(),
              SizedBox(height: 20),
              Text(
                "By continuing your confirm that you agree with our ",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                //onTap: () => Navigator.popAndPushNamed(context, ""),
                child: Text(
                  "Terms&Conditions",
                  style: TextStyle(
                    fontSize: 14,
                    color: kprimarycolor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
