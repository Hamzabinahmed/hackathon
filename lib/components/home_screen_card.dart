import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:hackathon_assign/ThemeData/color-theme.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  final List<String> _images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU",
    "https://www.catholicsingles.com/wp-content/uploads/2020/06/blog-header-3.png",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6aFkmK5B0Zw_udaEn6Z9hLJ17h0l2gm43jw&usqp=CAU"
    // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color(0xff756EF3),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // const SizedBox(height: 20),
              const Text(
                "Application Design",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 7),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Ui Design Kit",
                  style: TextStyle(color: Colors.grey.shade300, fontSize: 15),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterImageStack(
                      imageList: _images,
                      showTotalCount: true,
                      totalCount: _images.length - 1,
                      itemRadius: 30,
                      itemCount: 3,
                      itemBorderWidth: 1,
                      extraCountTextStyle: const TextStyle(fontSize: 12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Progress",
                          style: TextStyle(
                            color: Colors.grey.shade300,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        SizedBox(
                          width: 60,
                          child: LinearProgressIndicator(
                            value: 0.7,
                            backgroundColor: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.grey.shade300),
                            minHeight: 5,
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "50/80",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeProgressCard extends StatelessWidget {
  const HomeProgressCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300)),
      width: double.infinity,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" Productivity Mobile App",
                    style: Theme.of(context).textTheme.bodySmall),
                Text(
                  "Create Detail Booking",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.Htextcolor,
                  ),
                ),
                Text("2 minago", style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircularPercentIndicator(
                radius: 20.0,
                lineWidth: 4.0,
                percent: 0.6,
                circularStrokeCap: CircularStrokeCap.round,
                center: const Text(
                  "60%",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                progressColor: const Color(0xff756EF3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
