import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon_assign/View/login_screen.dart';
import 'package:hackathon_assign/components/Textfield.dart';
import 'package:hackathon_assign/components/btn.dart';
import 'package:hackathon_assign/components/square_tile.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController semailControl = TextEditingController();
  TextEditingController spassControl = TextEditingController();
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  signup(context) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: semailControl.text,
        password: spassControl.text,
      );
      Navigator.pop(context);
      print("User Addes Successfully");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // systemOverlayStyle: const SystemUiOverlayStyle(
        //   statusBarColor: Colors.white, // Status Bar Color
        //   statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        //   statusBarBrightness: Brightness.light, // For iOS (dark icons)
        // ),

        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff1a0e4a),
        leading: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_outlined),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: Text(
            "Sign Up",
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Create Account",
                  style: TextStyle(color: Color(0xff1a0e4a), fontSize: 30),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: 240,
                  child: Text(
                    "please enter your information and create your account",
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
                const SizedBox(height: 30),
                // MyTextField(
                //   controller: emailControl,
                //   hintText: "Enter your username",
                //   // obscureText: false,
                //   icon: const Icon(
                //     Icons.verified_user,
                //     size: 20,
                //   ),
                // ),
                // MyTextField(
                //   controller: semailControl,
                //   hintText: "Enter your username",
                //   // obscureText: false,
                //   icon: const Icon(
                //     Icons.verified_user_rounded,
                //     size: 20,
                //   ),
                // ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: semailControl,
                  hintText: "Enter your mail",
                  icon: const Icon(
                    Icons.email,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MyTextField(
                  controller: spassControl,
                  hintText: "Enter your password",
                  obscureText: true,
                  icon: const Icon(
                    Icons.visibility,
                    size: 20,
                  ),
                ),

                // forgot password

                const SizedBox(height: 20),
                // Sign in button
                MyButton(
                  text: "Sign Up",
                  height: 50,
                  fontsize: 20,
                  onpress: () {
                    signup(context);
                  },
                ),
                const SizedBox(height: 20),
                // or Signin with
                const Center(
                  child: Text(
                    "Sign Up with",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account ?',
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
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sing In',
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
    );
  }
}
