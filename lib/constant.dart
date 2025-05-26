import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodiex/home_screen/home_screen.dart';
import 'package:foodiex/size_configure.dart';

const String appName = "FoodieX";
const String decripton = "Description:";
const String kMatchPassError = "Passwords  don't Match";
const String kNameNullError = "Please Enter Full Name";
final RegExp emailValidatorRegExp = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String slogan = "Give food to needed";
const String bgImage =
    "assets/Everything-You-Need-to-Know-About-Food-Management-660x400.jpg";
const String login = "LOGIN";
const String forget = "Forget Password?";
const String kEmailsNullError = "Please enter yor email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kShortPassError = " password is too short";
const String kPassNullError = "Please Enter your Password";
//const Icon home = Icon(Icons.home);

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  //LoginScreen.routeName: (context) => LoginScreen(),
};
const String bcImage = "assets/chicken-biryani.jpg";
const String bcImages = "assets/Screenshot_20220624-103728~01[801].png";

final headingStyle = TextStyle(
  color: Colors.black,
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  height: 1.5,
);
