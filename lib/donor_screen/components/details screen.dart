import 'package:flutter/material.dart';
import 'package:foodiex/colors.dart';
import 'package:foodiex/donor_screen/components/detailbody.dart';
import 'package:foodiex/donor_screen/components/detailsform.dart';

class DetalisScreen extends StatefulWidget {
  @override
  State<DetalisScreen> createState() => _DetalisScreenState();
}

class _DetalisScreenState extends State<DetalisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fill the given details"),
          backgroundColor: kprimarycolor,
        ),
        body: Details());
  }
}
