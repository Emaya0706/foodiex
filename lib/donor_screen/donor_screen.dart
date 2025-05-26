import 'package:flutter/material.dart';
import 'package:foodiex/colors.dart';
import 'package:foodiex/donor_screen/components/body.dart';

import 'package:foodiex/home_screen/componets/navi_screen.dart';

class DonorScreen extends StatefulWidget {
  @override
  State<DonorScreen> createState() => _DonorScreenState();
}

class _DonorScreenState extends State<DonorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: kprimarycolor,
        elevation: 0.0,
        title: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            "Donor ",
            style: Theme.of(context).textTheme.subtitle2.copyWith(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.donor,
      ),
    );
  }
}
