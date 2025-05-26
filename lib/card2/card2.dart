import 'package:flutter/material.dart';
import 'package:foodiex/card2/bodycart.dart';
//import 'package:foodiex/card/body.dart';
//import 'package:foodiex/home_screen/componets/body.dart';

//import '../constant.dart';

class CardScreen2 extends StatefulWidget {
  @override
  State<CardScreen2> createState() => _CardScreen2State();
}

class _CardScreen2State extends State<CardScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Bodycart(),
    );
  }
}
