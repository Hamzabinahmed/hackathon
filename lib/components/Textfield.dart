import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon? icon;
  final int? maxlength;
  final Icon? prefix;
  final bool obscureText;
  const MyTextField({
    super.key,
    this.prefix,
    this.obscureText = false,
    required this.controller,
    required this.hintText,
    this.icon,
    this.maxlength,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: TextField(
        maxLength: maxlength,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: icon,
          prefixIcon: prefix,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff756EF3),
            ),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }
}
