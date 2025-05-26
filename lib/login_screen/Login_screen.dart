import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodiex/login_screen/components/body.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // ignore: unused_field
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: Body(),
    );
  }
}
// class LoginScreen extends StatelessWidget {
//   static String routeName = "/login";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       resizeToAvoidBottomInset: true,
//       body: Body(),
//     );
//   }
// }
