import 'package:flutter/material.dart';
import 'package:foodiex/colors.dart';
import 'package:foodiex/donor_screen/components/detailbody.dart';

import '../../constant.dart';
import '../../size_configure.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
              DetailsBody(),
              SizedBox(height: 50),
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
