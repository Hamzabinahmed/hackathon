import 'package:flutter/material.dart';
import 'package:hackathon_assign/ThemeData/color-theme.dart';

import 'package:hackathon_assign/View/add_task/taskcomponent.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});
  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: AppColors.Htextcolor,
          elevation: 0,
          title: const Text(
            "Add Task",
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Task Name",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const TaskTextField(
                width: double.infinity,
              ),
              Text(
                "Team Member",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Color(0xff756EF3),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff756EF3),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff756EF3),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff756EF3),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xff756EF3),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Date",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const TaskTextField(width: double.infinity),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Start Time",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const TaskTextField(width: 120),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "End Time",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const TaskTextField(width: 120),
                    ],
                  ),
                ],
              ),
              Text(
                "Board",
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(
                height: 50,
                child: TaskBoard(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Center(
                  child: ElevatedTaskBtn(
                    text: "Save",
                    onpress: () {
                      Navigator.pop(context);
                    },
                    height: 50,
                    width: 220,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
