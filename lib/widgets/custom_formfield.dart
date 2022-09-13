

import 'package:flutter/material.dart';


class CustomFormField extends StatelessWidget {

  final String text;
  final String hint;
  final Function onSave;
  final Function validator;
  IconData ? icon;
  bool obs;
  //final TextEditingController controller;
  final Color color;
  CustomFormField({
    required this.text,
    required this.hint,
    this.icon,
    required this.onSave,
   // required this.controller,
    required this.obs,
    required this.validator,
    required this.color,
  }
      ) ;

  @override
  Widget build(BuildContext context) {
    return

      TextFormField(

        obscureText:  obs,
        enableSuggestions: false,
        autocorrect: false,
        decoration: InputDecoration(
          // labelText: AppLocalizations.of(context)!
          //     .password,
          suffixIcon: IconButton(
            icon: Icon(
              obs ?
              icon
                  : Icons.visibility_off,
            ),
            onPressed: () {

            },
          ),
        ),
        validator: (value) {
          if (value!.isNotEmpty) return null;
          return '';
          // AppLocalizations.of(context)!
          // .enterPassword;
        },
      );
  }
}