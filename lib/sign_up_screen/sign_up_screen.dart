import 'package:flutter/material.dart';
import 'package:foodiex/colors.dart';
import 'package:foodiex/sign_up_screen/components/body.dart';

class SignUpScreen extends StatefulWidget {
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(color: kprimarycolor),
        ),
      ),
      body: Body(),
    );
  }
}
