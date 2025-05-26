import 'package:flutter/material.dart';
import 'package:foodiex/home_screen/home_screen.dart';
import 'package:foodiex/sign_up_screen/sign_up_screen.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import '../../colors.dart';
import '../../constant.dart';
import '../../default_button.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  //final _auth = FirebaseAuth.instance;

  //---------------------firebase------------------------------------------------------------
  // void signIn() async {
  //   await FirebaseAuth.instance
  //       .signInWithEmailAndPassword(email: _email, password: _password)
  //       .catchError((onError) {
  //     print(onError);
  //   }).then((authUser) {
  //     print(authUser.user.uid);
  //   });
  // }
  // bool remember = false;
  // final List<String> errors = [];
  // void addError({String error}) {
  //   if (!errors.contains(error))
  //     setState(() {
  //       errors.add(error);
  //     });
  // }

  // void removeError({String error}) {
  //   if (errors.contains(error))
  //     setState(() {
  //       errors.remove(error);
  //     });
  // }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Form(
      key: formKey,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    bgImage,
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
                  Positioned(
                    bottom: 30,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Colors.black),
                          text: appName + "\n",
                          children: [
                            TextSpan(
                                text: slogan,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10.0),
                child: Container(
                  child: Text(
                    "  $login ",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          kprimarycolor.withOpacity(0.2),
                          // kprimarycolor.withOpacity(0.1)
                          Colors.transparent,
                        ],
                      ),
                      border: Border(
                          left: BorderSide(color: kprimarycolor, width: 5))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                //(right: 10.0, left: 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,

                  onSaved: (value) {
                    _email = value;
                  },
                  validator: (email) {
                    if (email.isEmpty)
                      return "please enter the email";
                    else if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(email))
                      return "Please enter correct Email Id";
                    return null;
                  },
                  // onSaved: (newValue) => email = newValue,
                  // onChanged: (value) {
                  //   if (value.isNotEmpty) {
                  //     removeError(error: kEmailsNullError);
                  //   } else if (value.length >= 7) {
                  //     removeError(error: kInvalidEmailError);
                  //   }
                  //   return null;
                  // },
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     addError(error: kEmailsNullError);
                  //     return "";
                  //   } else if (value.length < 7) {
                  //     addError(error: kInvalidEmailError);
                  //     return "";
                  //   }
                  //   return null;
                  // },
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kprimarycolor),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: kprimarycolor,
                      ),
                      labelText: "EMAIL ADDRESS",
                      labelStyle:
                          TextStyle(color: kprimarycolor, fontSize: 16)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10), //(right: 10.0, left: 10.0),
                child: TextFormField(
                  obscureText: true,
                  onSaved: (value) {
                    _password = value;
                  },
                  validator: (password) {
                    if (password.isEmpty)
                      return "Please Enter your password";
                    else if (password.length < 8 || password.length > 15)
                      return "password Length is incorrect";
                    return null;
                  },
                  // obscureText: true,
                  // onSaved: (newValue) => password = newValue,
                  // onChanged: (value) {
                  //   if (value.isNotEmpty) {
                  //     removeError(error: kPassNullError);
                  //   } else if (value.length >= 7) {
                  //     removeError(error: kShortPassError);
                  //   }
                  //   return null;
                  // },
                  // validator: (value) {
                  //   if (value.isEmpty) {
                  //     addError(error: kPassNullError);
                  //     return "";
                  //   } else if (value.length < 9) {
                  //     addError(error: kShortPassError);
                  //     return "";
                  //   }
                  //   return null;
                  // },
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kprimarycolor),
                      ),
                      prefixIcon: Icon(
                        Icons.lock_open,
                        color: kprimarycolor,
                      ),
                      labelText: "PASSWORD",
                      labelStyle:
                          TextStyle(color: kprimarycolor, fontSize: 16)),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  child: Text(forget),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: DefaultButton(
                  text: "Login",
                  press: () {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      FocusScope.of(context).unfocus();
                      //signIn();

                      KeyboardUtil.hideKeyboard(context);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                      print(_email);
                      print(_password);
                      //   _formKey.currentState.save();
                      //   // if all are valid then go to success screen
                      //   KeyboardUtil.hideKeyboard(context);
                      //   Navigator.push(context,
                      //       MaterialPageRoute(builder: (context) => HomeScreen()));
                      // }
                    }
                  },
                ),
              ),
              // Center(
              //     child:
              //     // SizedBox(
              //     //   height: height * 0.09,
              //     //   width: width - 95,
              //     //   child: FlatButton(
              //     //     color: kprimarycolor,
              //     //     shape: RoundedRectangleBorder(
              //     //       borderRadius: BorderRadius.all(
              //     //         Radius.circular(15),
              //     //       ),
              //     //     ),
              //     //     onPressed: () {
              //     //       print("hi its login");
              //     //       if (_formKey.currentState.validate()) {
              //     //         _formKey.currentState.save();
              //     //         // if all are valid then go to success screen
              //     //         KeyboardUtil.hideKeyboard(context);
              //     //         Navigator.push(context,
              //     //             MaterialPageRoute(builder: (context) => HomeScreen()));
              //     //       }
              //     //       // Navigator.push(
              //     //       //   context,
              //     //       //   MaterialPageRoute(builder: (context) => HomeScreen()),
              //     //       // );
              //     //     },
              //     //     child: Text(
              //     //       "Login",
              //     //       style: TextStyle(
              //     //           letterSpacing: 0.5,
              //     //           fontSize: 22,
              //     //           fontWeight: FontWeight.bold,
              //     //           color: Colors.white),
              //     //     ),
              //     //   ),
              //     // ),

              //     ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have a account?"),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(color: kprimarycolor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// @override
// Widget build(BuildContext context) {
// ignore: todo
//   // TODO: implement build
//   throw UnimplementedError();
// }

// class Body extends StatefulWidget {
//   @override
//   _BodyState
//   final _formKey = GlobalKey<FormState>();
//   String udise;
//   String phonenumber;
//   final List<String> errors = [];
//   void addError({String error}) {
//     if (!errors.contains(error))

//       setState(() {
//         errors.add(error);
//       });
//   }

//   void removeError({String error}) {
//     if (errors.contains(error))
//       setState(() {
//         errors.remove(error);
//       });
//   }

//   Widget build(BuildContext context) {
//     double height = MediaQuery.of(context).size.height;
//     double width = MediaQuery.of(context).size.width;
//   //   return SingleChildScrollView(
//   //     child: Column(
//   //       crossAxisAlignment: CrossAxisAlignment.start,
//   //       mainAxisAlignment: MainAxisAlignment.start,
//   //       children: [
//   //         Stack(szs
//   //           children: [
//   //             Image.asset(
//   //               bgImage,
//   //               height: height * 0.40,
//   //               width: width,
//   //               fit: BoxFit.cover,
//   //             ),
//             Container(
//               height: height * 0.42,
//               width: width,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   stops: [0.3, 0.7],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [Colors.transparent, Colors.white],
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 30,
//               left: 0,
//               right: 0,
//               child: Center(
//                   child: RichText(
//                       textAlign: TextAlign.center,
//                       text: TextSpan(
//                           style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.black),
//                           text: appName + "\n",
//                           children: [
//                             TextSpan(
//                                 text: slogan,
//                                 style: TextStyle(
//                                     color: Colors.grey, fontSize: 15))
//                           ]))),
//             ),
//           ],
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 20, left: 10.0),
//           child: Container(
//             child: Text(
//               "  $login ",
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     kprimarycolor.withOpacity(0.2),
//                     // kprimarycolor.withOpacity(0.1)
//                     Colors.transparent,
//                   ],
//                 ),
//                 border:
//                     Border(left: BorderSide(color: kprimarycolor, width: 5))),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10), //(right: 10.0, left: 10.0),
//           child: TextField(
//             decoration: InputDecoration(
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: kprimarycolor),
//                 ),
//                 prefixIcon: Icon(
//                   Icons.email,
//                   color: kprimarycolor,
//                 ),
//                 labelText: "EMAIL ADDRESS",
//                 labelStyle: TextStyle(color: kprimarycolor, fontSize: 16)),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10), //(right: 10.0, left: 10.0),
//           child: TextField(
//             obscureText: true,
//             decoration: InputDecoration(
//                 focusedBorder: UnderlineInputBorder(
//                   borderSide: BorderSide(color: kprimarycolor),
//                 ),
//                 prefixIcon: Icon(
//                   Icons.lock_open,
//                   color: kprimarycolor,
//                 ),
//                 labelText: "PASSWORD",
//                 labelStyle: TextStyle(color: kprimarycolor, fontSize: 16)),
//           ),
//         ),
//         Align(
//           alignment: Alignment.centerRight,
//           child: FlatButton(
//             onPressed: () {},
//             child: Text(forget),
//           ),
//         ),
//         Center(
//           child: SizedBox(
//             height: height * 0.09,
//             width: width - 95,
//             child: FlatButton(
//               color: kprimarycolor,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.all(
//                   Radius.circular(15),
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => HomeScreen()),
//                 );
//               },
//               child: Text(
//                 "Login",
//                 style: TextStyle(
//                     letterSpacing: 0.5,
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//               ),
//             ),
//           ),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Don't have a account?"),
//             FlatButton(
//               onPressed: () {},
//               child: Text(
//                 "Create Account",
//                 style: TextStyle(color: kprimarycolor),
//               ),
//             )
//           ],
//         ),
//       ],
//     ),
//   );
// }

class KeyboardUtil {
  static void hideKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}
