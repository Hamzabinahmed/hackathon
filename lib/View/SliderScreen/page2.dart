import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.5;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Image(
          image: const AssetImage("assets/images/intro2.png"),
          fit: BoxFit.fill,
          height: height,
          width: width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 50),
          child: SizedBox(
            // height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Task Management",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    width: 250,
                    child: RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: "Work more",
                        style: Theme.of(context).textTheme.bodyLarge,
                        children: [
                          const TextSpan(
                            text: " Structured ",
                            style: TextStyle(
                              color: Color(0xff756EF3),
                            ),
                          ),
                          TextSpan(
                              text: "and Organized .",
                              style: Theme.of(context).textTheme.bodyLarge),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
