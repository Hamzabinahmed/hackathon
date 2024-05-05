import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hackathon_assign/View/bottomnavigation.dart';
import 'package:hackathon_assign/View/home_Screen.dart';
import 'package:hackathon_assign/View/signup_screen.dart';
import 'package:hackathon_assign/components/Textfield.dart';
import 'package:hackathon_assign/components/btn.dart';
import 'package:hackathon_assign/components/square_tile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passControl = TextEditingController();
  bool passwordVisible = true;

  login(context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailControl.text, password: passControl.text);
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const BottomNavigation()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
      } else if (e.code == 'wrong-password') {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff1a0e4a),
        leading: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_outlined),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Text(
            "Sign in",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SizedBox(
          // height: MediaQuery.of(context).size.height,
          height: double.infinity,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(color: Color(0xff1a0e4a), fontSize: 30),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 240,
                    child: Text(
                      "please enter your email address and password for login",
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: emailControl,
                    hintText: "Enter your email",
                    // obscureText: false,
                    icon: const Icon(
                      Icons.email,
                      size: 20,
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  MyTextField(
                    controller: passControl,
                    hintText: "Enter your password",
                    // obscureText: password,
                    icon: const Icon(
                      Icons.visibility,
                      size: 20,
                    ),
                  ),

                  // forgot password

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'forgot password ?',
                          style:
                              TextStyle(color: Color(0xff1a0e4a), fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Sign in button
                  MyButton(
                    text: "Sign in",
                    height: 50,
                    fontsize: 20,
                    onpress: () {
                      login(context);
                    },
                  ),
                  const SizedBox(height: 20),
                  // or Signin with
                  const Center(
                    child: Text("SignIn with"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // google + Apple button
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //  google button

                      SquareTile(imagePath: 'assets/images/apple.png'),

                      SizedBox(
                        width: 10,
                      ),
                      //  Apple button

                      SquareTile(
                        imagePath: 'assets/images/google.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not a memeber?',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
