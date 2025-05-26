import 'package:flutter/material.dart';
import 'package:foodiex/login_screen/Login_screen.dart';

import '../../constant.dart';
import '../../default_button.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String name;
  bool remember = false;
  String password;
  String email;
  String confrompassword;
  final List<String> errors = [];
  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameFormField(),
          SizedBox(height: 35),
          buildEmailFormField(),
          SizedBox(height: 35),
          buildPasswordFormField(),
          //SizedBox(height: 35),
          // buildConformPasswordFormField(),
          //FormError(errors: errors),
          SizedBox(height: 35),
          DefaultButton(
            text: "cotinue",
            press: () {
              // FirebaseAuth.instance
              //     .createUserWithEmailAndPassword(
              //         email: email, password: password)
              //     .then(
              //   (value) {
              //     print("Created new account");
              if (_formKey.currentState.validate()) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              }
              //   },
              // )
              // ignore: missing_return
            },
          )
        ],
      ),
    );
  }

  // TextFormField buildConformPasswordFormField() {
  //   return TextFormField(
  //     obscureText: true,
  //     onSaved: (newValue) => confrompassword = newValue,
  //     onChanged: (value) {
  //       if (value.isNotEmpty) {
  //         removeError(error: kPassNullError);
  //       } else if (value.isNotEmpty && password == confrompassword) {
  //         removeError(error: kShortPassError);
  //       }
  //       return null;
  //     },
  //     validator: (value) {
  //       if (value.isEmpty) {
  //         addError(error: kPassNullError);
  //         return "";
  //       } else if ((password != value)) {
  //         addError(error: kMatchPassError);
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: InputDecoration(
  //       labelText: "conform Password",
  //       hintText: "Re-Enter Your Password",
  //       floatingLabelBehavior: FloatingLabelBehavior.always,
  //       icon: Icon(Icons.lock),
  //     ),
  //   );
  // }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 7) {
          removeError(error: kShortPassError);
        }

        password = value;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 7) {
          addError(error: kShortPassError);
          return " ";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "password",
        hintText: "Enter Your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        icon: Icon(Icons.lock),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }

        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: " Name",
        hintText: "Enter Your Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        icon: Icon(Icons.lock),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailsNullError);
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailsNullError);

          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);

          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: " Email-ID",
          hintText: "Enter Your Email-ID",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          icon: Icon(Icons.email_outlined)),
    );
  }
}

// udise number tabel

  