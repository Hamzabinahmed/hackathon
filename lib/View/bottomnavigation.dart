import 'package:flutter/material.dart';
import 'package:hackathon_assign/ThemeData/color-theme.dart';
import 'package:hackathon_assign/View/add_task/task_screen.dart';
import 'package:hackathon_assign/View/chat_screen.dart';
import 'package:hackathon_assign/View/file_screen.dart';
import 'package:hackathon_assign/View/home_Screen.dart';
import 'package:hackathon_assign/View/profile_screen.dart';
import 'package:hackathon_assign/components/bottom_sheet_card.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});
  @override
  State<BottomNavigation> createState() => _MainPageState();
}

class _MainPageState extends State<BottomNavigation> {
  Widget currentScreen = const HomeScreen();
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          color: Colors.white,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = const HomeScreen();
                    activeTab = 0;
                  });
                },
                child: Icon(
                  Icons.home_outlined,
                  color: activeTab == 0 ? const Color(0xff756EF3) : Colors.grey,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = FileScreen();
                    activeTab = 1;
                  });
                },
                child: Icon(
                  Icons.folder_outlined,
                  color: activeTab == 1 ? const Color(0xff756EF3) : Colors.grey,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: const Color(0xff756EF3),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25),
                      ),
                    ),
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: SizedBox(
                          height: 400,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                BottomSheetCard(
                                  text: "Create Task",
                                  icon: Icons.edit_outlined,
                                  ontap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TaskScreen(),
                                      ),
                                    );
                                  },
                                ),
                                BottomSheetCard(
                                  text: "Create Project",
                                  icon: Icons.add_box_outlined,
                                  ontap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TaskScreen(),
                                      ),
                                    );
                                  },
                                ),
                                BottomSheetCard(
                                  text: "Create Team",
                                  icon: Icons.group_outlined,
                                  ontap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TaskScreen(),
                                      ),
                                    );
                                  },
                                ),
                                BottomSheetCard(
                                  text: "Create Event",
                                  icon: Icons.timelapse_outlined,
                                  ontap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TaskScreen(),
                                      ),
                                    );
                                  },
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(
                                    Icons.cancel_rounded,
                                    size: 40,
                                    color: AppColors.Htextcolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const ChatScreen();
                      activeTab = 2;
                    },
                  );
                },
                child: Icon(
                  Icons.chat_outlined,
                  color: activeTab == 2 ? const Color(0xff756EF3) : Colors.grey,
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(
                    () {
                      currentScreen = const ProfileScreen();
                      activeTab = 3;
                    },
                  );
                },
                child: Icon(
                  Icons.add_outlined,
                  color: activeTab == 3 ? const Color(0xff756EF3) : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
