import 'package:flutter/material.dart';
import 'package:hackathon_assign/View/SliderScreen/carousel_slider.dart';
import 'package:hackathon_assign/components/btn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // void initState() {
  //   super.initState();
  //   Timer(
  //       Duration(seconds: 1),
  //       () => Navigator.pushReplacement(context,
  //           MaterialPageRoute(builder: (context) => CarouselSlider())));
  // }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.5;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/cover.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.6,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Taskey",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        textAlign: TextAlign.center,
                        "Building Better Workspace",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        textAlign: TextAlign.center,
                        "create a unique emotional story that describe better than words",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0),
                      child: MyButton(
                        text: "Get Started",
                        height: 60,
                        fontsize: 20,
                        onpress: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CarouselSlider()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
