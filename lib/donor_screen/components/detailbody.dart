import 'package:flutter/material.dart';
import 'package:foodiex/colors.dart';
//import 'package:foodiex/donor_screen/components/pic_screen/pic_screen.dart';

import '../../constant.dart';
import '../../default_button.dart';
import '../../size_configure.dart';

class DetailsBody extends StatefulWidget {
  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  final _formKey = GlobalKey<FormState>();
  String name;
  bool remember = false;
  String password;
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
          SizedBox(height: 50),
          buildPasswordFormField(),
          SizedBox(height: 50),
          buildConformPasswordFormField(),
          // FormError(errors: errors),
          SizedBox(height: 50),
          buildDesFormField(),
          SizedBox(height: 50),
          DefaultButton(
            text: "cotinue",
            press: () {
              if (_formKey.currentState.validate()) {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) =>()));
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildConformPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confrompassword = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == confrompassword) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: "Address",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.location_on),
          fillColor: kprimarycolor),
    );
  }

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
          hintText: "Food Prepared Time",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.timelapse)),
    );
  }

// udise number tabel

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
          hintText: "Food Type",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.tag_faces_sharp)),
    );
  }

  TextField buildDesFormField() {
    return TextField(
      decoration: InputDecoration(
          hintText: "Description",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          // suffixIcon: Icon(Icons.tag_faces_sharp),
          border: OutlineInputBorder(borderRadius: BorderRadius.vertical())),
    );
  }
}
