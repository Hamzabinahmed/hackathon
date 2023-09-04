import 'package:flutter/material.dart';
import 'package:hackathon_assign/ThemeData/color-theme.dart';

class BottomSheetCard extends StatelessWidget {
  const BottomSheetCard(
      {super.key, required this.text, required this.icon, required this.ontap});
  final String text;
  final IconData icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Icon(
                icon,
                color: AppColors.Htextcolor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                text,
                style: TextStyle(
                    color: AppColors.Htextcolor, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
