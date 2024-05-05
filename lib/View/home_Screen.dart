import 'package:flutter/material.dart';
import 'package:hackathon_assign/components/home_screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff1a0e4a),
        title: const Text("Friday, 26"),
        centerTitle: true,
        actions: [
          Icon(Icons.notifications_outlined),
          const SizedBox(
            width: 10,
          ),
          TextButton(
            onPressed: () {},
            child: Text("Logout"),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 5.0),
                child: SizedBox(
                  width: 250,
                  child: Text(
                    "Let's make a habits together",
                    style: TextStyle(
                        color: Color(0xff1a0e4a),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const HomeCard();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("In progress"),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return const HomeProgressCard();
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
