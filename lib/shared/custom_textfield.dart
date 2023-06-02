import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {

  final TextInputType textInputTypeee;
  final bool isPassword;
  final String hinttexttt;

  Mytextfield({

    required this.textInputTypeee,
    required this.isPassword,
    required this.hinttexttt,

  });

    @override
    Widget build(BuildContext context) {
      return TextField(
          keyboardType: textInputTypeee,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hinttexttt,
// To delete borders
            enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context),),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey,),),
// fillColor: Colors.red,
            filled: true,
            contentPadding: const EdgeInsets.all(18),
          ));
    }
  }


