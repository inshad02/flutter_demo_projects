// import 'dart:ffi';

// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  String? hinttext;
  String? Function(String?)? validator;
  TextEditingController? controller;
  bool? obsecure;

  Customtextfield(
      {super.key,
      required this.hinttext,
      required this.validator,
      required this.controller,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: obsecure!,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.grey),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide.none)),
    );
  }
}

void customSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
