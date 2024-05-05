import 'package:flutter/material.dart';
import 'package:hackathon_assign/ThemeData/color-theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: AppColors.Htextcolor,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text("Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  const CircleAvatar(radius: 40),
                  Text(
                    "Alvart Ainstain",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: AppColors.Htextcolor),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {},
                    child: const Text("Edit"),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(Icons.lock_clock),
                    Text("5"),
                    Text("ongoing"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.check_box_outlined),
                    Text("25"),
                    Text("Total Complete"),
                  ],
                ),
              ],
            ),
            ProfileCard(
              text: "My Project",
              onpress: () {},
            ),
            ProfileCard(
              text: "Join a Team",
              onpress: () {},
            ),
            ProfileCard(
              text: "Setting",
              onpress: () {},
            ),
            ProfileCard(
              text: "My Task",
              onpress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

//
//
// PROFILE CARDS
//
//
class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.text, required this.onpress});
  final String text;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              text,
              style: TextStyle(
                  color: AppColors.Htextcolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 17),
            ),
          ),
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
