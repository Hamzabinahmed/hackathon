import 'package:flutter/material.dart';
import 'package:hackathon_assign/View/SliderScreen/page1.dart';
import 'package:hackathon_assign/View/SliderScreen/page2.dart';
import 'package:hackathon_assign/View/SliderScreen/page3.dart';

class CarouselSlider extends StatelessWidget {
  const CarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Page1(),
          Page2(),
          Page3(),
        ],
      ),
    );
  }
}
