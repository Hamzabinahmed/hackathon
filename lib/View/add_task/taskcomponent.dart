import 'package:flutter/material.dart';
import 'package:hackathon_assign/ThemeData/color-theme.dart';

class TaskTextField extends StatelessWidget {
  const TaskTextField({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        style: TextStyle(
            color: AppColors.Htextcolor,
            fontSize: 30,
            fontWeight: FontWeight.w500),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class TaskBoard extends StatelessWidget {
  const TaskBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TaskContainer(text: "Urgent"),
        TaskContainer(text: "Running"),
        TaskContainer(text: "Ongoing"),
      ],
    );
  }
}

class TaskContainer extends StatelessWidget {
  const TaskContainer({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 40,
      width: 100,
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}

class ElevatedTaskBtn extends StatelessWidget {
  const ElevatedTaskBtn(
      {super.key,
      required this.height,
      required this.text,
      required this.onpress,
      required this.width});
  final String text;
  final VoidCallback onpress;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff756EF3),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: onpress,
        child: Text(
          text,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
