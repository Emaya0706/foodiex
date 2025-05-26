import 'package:flutter/material.dart';
import 'package:foodiex/home_screen/home_screen.dart';

import '../colors.dart';
import '../constant.dart';
import '../default_button.dart';

class Bodycart extends StatefulWidget {
  @override
  State<Bodycart> createState() => _BodycartState();
}

class _BodycartState extends State<Bodycart> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset(
                bcImages,
                height: height * 0.40,
                width: width,
                fit: BoxFit.cover,
              ),
              Container(
                height: height * 0.42,
                width: width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.3, 0.7],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.white],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 250),
                child: Center(
                  child: Row(children: [
                    Center(
                      child: Text(
                        "Meals",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    //Icon(Icons.star, color: Colors.deepOrange),
                    //Text(
                    //"4.2",
                    // style: TextStyle(color: kprimarycolor),
                    // ),
                    //Text("(111 ratings) "),
                  ]
                      //   child: RichText(
                      //     textAlign: TextAlign.center,
                      //     text: TextSpan(
                      //       style: TextStyle(
                      //           fontSize: 25,
                      //           fontWeight: FontWeight.w700,
                      //           color: Colors.black),
                      //       text: "Chicken Briyanis",

                      //       children: [
                      //         Icon(Icons.star,color: Colors.deepOrange),
                      //         TextSpan(
                      //             text: slogan,
                      //             style: TextStyle(color: Colors.grey, fontSize: 15))
                      //       ],
                      //     ),
                      //   ),
                      //
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 300),
                child: Container(
                  child: Column(
                    children: [
                      Text(
                        decripton,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Food avaliable at mandiayur\n\n It is approxmately sufficient for 100 pepole. \n\n Food prepared at 9:30AM , status of food is fresh\n\n For more details contact me:8754866956"),
                      ),
                      SizedBox(height: 50),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: DefaultButton(text: "Place orders", press: () {}

                            //   _formKey.currentState.save();
                            //   // if all are valid then go to success screen
                            //   KeyboardUtil.hideKeyboard(context);
                            //   Navigator.push(context,
                            //       MaterialPageRoute(builder: (context) => HomeScreen()));
                            // }

                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
