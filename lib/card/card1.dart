import 'package:flutter/material.dart';
import 'package:foodiex/card/body.dart';
//import 'package:foodiex/home_screen/componets/body.dart';

//import '../constant.dart';

class CardScreen1 extends StatefulWidget {
  @override
  State<CardScreen1> createState() => _CardScreen1State();
}

class _CardScreen1State extends State<CardScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
