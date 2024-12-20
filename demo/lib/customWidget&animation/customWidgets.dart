import 'package:flutter/material.dart';

// textformfield

class CustomFormField extends StatelessWidget {
  String? hinttext;
  TextEditingController? controller;
  String Function(String?) validator;

  CustomFormField({
    super.key,
    required this.hinttext,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      decoration: InputDecoration(
          fillColor: Colors.grey.shade400,
          filled: true,
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.white),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none)),
    );
  }
}

// custombutton

class CustomButton extends StatelessWidget {
  String? text;
  Function()? onPressed;

  CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: TextStyle(color: Colors.white),
      ),
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.deepPurple)),
    );
  }
}
