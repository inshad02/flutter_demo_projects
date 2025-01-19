import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData prefixIcon;
  final bool obsecure;
  String? Function(String?)? validator;

  CustomTextField(
      {super.key,
      this.validator,
      required this.controller,
      required this.label,
      required this.prefixIcon,
      this.obsecure = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obsecure,
        decoration: InputDecoration(
          label: Text(label),
          prefixIcon: Icon(prefixIcon),
          labelStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

void customSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
