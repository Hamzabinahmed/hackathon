import 'package:flutter/material.dart';
import 'package:hackathon_assign/View/login_screen.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.5;
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image(
          image: const AssetImage("assets/images/intro3.png"),
          fit: BoxFit.fill,
          height: height,
          width: width,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0, top: 50),
          child: SizedBox(
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
                        text: "Manage your",
                        style: Theme.of(context).textTheme.bodyLarge,
                        children: [
                          const TextSpan(
                            text: " Task ",
                            style: TextStyle(
                              color: Color(0xff756EF3),
                            ),
                          ),
                          TextSpan(
                              text: "quickly for Results ",
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
        Padding(
          padding: const EdgeInsets.only(left: 250.0),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ],
    );
  }
}
