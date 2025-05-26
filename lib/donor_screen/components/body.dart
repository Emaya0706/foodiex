import 'package:flutter/material.dart';
import 'package:foodiex/default_button.dart';
import 'package:foodiex/donor_screen/components/details%20screen.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 275),
            child: DefaultButton(
              text: "Donate the food",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalisScreen(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
