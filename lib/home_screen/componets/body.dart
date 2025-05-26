import 'package:flutter/material.dart';
import 'package:foodiex/card/card1.dart';
import 'package:foodiex/card2/card2.dart';
// ignore: unused_import
import 'package:foodiex/constant.dart';
//import 'package:foodiex/login_screen/Login_screen.dart';

import '../../colors.dart';

class Body extends StatelessWidget {
  BuildContext get context => null;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: " search foods",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      icon: Icon(Icons.search),
                    ),
                  ),
                  // child: Container(
                  //   height: 50,
                  //   margin: EdgeInsets.symmetric(vertical: 5),
                  //   padding: EdgeInsets.only(left: 5),
                  //   decoration: BoxDecoration(
                  //       color: Colors.grey.shade300,
                  //       borderRadius: BorderRadius.circular(30)),
                  //   child: Material(
                  //     color: Colors.transparent,
                  //     child: InkWell(
                  //       borderRadius: BorderRadius.circular(30),
                  //       onTap: () {},
                  //       child: Row(
                  //         children: [
                  //           TextFormField(
                  //             keyboardType: TextInputType.multiline,
                  //             decoration: InputDecoration(
                  //               labelText: "search foods",
                  //               hintText: "Search foods",
                  //               hintStyle: Theme.of(context)
                  //                   .textTheme
                  //                   .subtitle1
                  //                   .copyWith(color: Colors.black45),
                  //               floatingLabelBehavior:
                  //                   FloatingLabelBehavior.always,
                  //               icon: Icon(
                  //                 Icons.search,
                  //                 color: Colors.black87,
                  //               ),
                  //             ),
                  //           )
                  //           // Icon(Icons.search),
                  //           // SizedBox(
                  //           //   width: 10,
                  //           // ),
                  //           // Text(
                  //           //   "Search Foods",
                  //           //   style: Theme.of(context)
                  //           //       .textTheme
                  //           //       .subtitle1
                  //           //       .copyWith(color: Colors.black45),
                  //           // ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      color: kprimarycolor,
                      size: 38,
                    ),
                    onPressed: () {})
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  "Category",
                  style: Theme.of(context).textTheme.headline1.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                print("pressedhi");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CardScreen1()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.shade100,
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // onTap: () Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => LoginScreen())),
                    Container(
                      height: 220,
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage("assets/chicken-biryani.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Chicken Briyani",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Time:",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Text("12:30pm"),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Text(
                            "Organisation:",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("ABC.mall"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "Quantity:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text("500 pepople"),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Location:",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text("mandaiyur"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            // bulidCard2formField(),
            GestureDetector(
              onTap: () {
                print("pressed abc");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CardScreen2()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.shade100,
                      spreadRadius: 5,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      margin: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        image: DecorationImage(
                          image: AssetImage("assets/images.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            " Rice,Sambar,Rasam,Poriyal,\nCurd and Laddu ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Time:",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Text("Mrng,10:30AM"),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: Text(
                            "Organisation:",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Murgan\n Temple"),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "Quantity:",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text("150 pepople"),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Location:",
                            style: TextStyle(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text("Namakkal"),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

// class bulidtextformField extends StatelessWidget {
//   const bulidtextformField({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       keyboardType: TextInputType.name,
//       decoration: InputDecoration(
//         hintText: " search foods",
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         icon: Icon(Icons.search),
//       ),
//     );
//   }
// }
}
