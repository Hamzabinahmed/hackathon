import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_assign/View/add_task/task_screen.dart';
// import 'package:hackathon_assign/View/SliderScreen/page1.dart';
// import 'package:hackathon_assign/View/SliderScreen/page2.dart';
// import 'package:hackathon_assign/View/SliderScreen/page3.dart';
import 'package:hackathon_assign/View/bottomnavigation.dart';
import 'package:hackathon_assign/View/chat_screen.dart';
import 'package:hackathon_assign/View/home_Screen.dart';
// import 'package:hackathon_assign/View/login_screen.dart';
// import 'package:hackathon_assign/View/signup_screen.dart';
import 'package:hackathon_assign/View/splashScreen.dart';
import 'package:hackathon_assign/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 46,
            fontWeight: FontWeight.w800,
            color: Color(0xff756EF3),
          ),
          displayLarge: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.w600),
          displaySmall: TextStyle(fontSize: 15),
          bodyMedium: TextStyle(
            fontSize: 20,
            color: Color(0xff756EF3),
            fontWeight: FontWeight.w500,
          ),
          bodyLarge: TextStyle(color: Colors.black, fontSize: 35),
        ),
      ),
      home: const SplashScreen(),
      // home: ChatScreen(),
      // home: HomeScreen(),
      // home: BottomNavigation()
      // home: const TaskScreen(),
      // home: const LoginScreen(),
      // home: SignupScreen(),
      // home: Page2(),
      // home: Page3(),
    );
  }
}
