import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final IconData? suffixIcon;
  final String hintText;
  final TextEditingController controller;
  const DefaultTextField(
      {super.key, required this.suffixIcon, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller:controller ,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            suffixIcon: Icon(
              suffixIcon,
              color: Colors.blue,
            )),
      ),
    );
  }
}
