import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.text,
    required this.height,
    required this.fontsize,
    required this.onpress,
  });

  final String text;

  final double height;
  final double fontsize;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff756EF3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onpress,
        child: Text(
          text,
          style: TextStyle(fontSize: fontsize),
        ),
      ),
    );
  }
}
