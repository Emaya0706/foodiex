import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodiex/home_screen/componets/body.dart';
import 'package:foodiex/home_screen/componets/navi_screen.dart';

import '../colors.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  // static String routeName = "/home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Delivering to",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .copyWith(color: Colors.black45),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Text(
                    "Current Location",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: kprimarycolor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
