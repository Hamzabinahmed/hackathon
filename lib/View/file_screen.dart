import 'package:flutter/material.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:hackathon_assign/components/Textfield.dart';

class FileScreen extends StatefulWidget {
  const FileScreen({super.key});

  @override
  State<FileScreen> createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
  TextEditingController fileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                  const Text("Project"),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              MyTextField(
                
                controller: fileController,
                hintText: "search",
                prefix: const Icon(Icons.search),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("favourite"),
                  Text("Recent "),
                  Text("all"),
                  Icon(Icons.apps)
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (itemBuilder, context) {
                        return const FileCards();
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FileCards extends StatefulWidget {
  const FileCards({super.key});

  @override
  State<FileCards> createState() => _FileCardsState();
}

class _FileCardsState extends State<FileCards> {
  final List<String> _images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU",
    "https://www.catholicsingles.com/wp-content/uploads/2020/06/blog-header-3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: const Text("Unity Dashboard"),
            subtitle: const Text("Marketing"),
            trailing: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(20),
              ),
              height: 20,
              width: 60,
              child: const Center(child: Text("10 / 20")),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
            child: Row(
              children: [
                FlutterImageStack(
                  imageList: _images,
                  totalCount: _images.length - 1,
                  itemRadius: 25,
                  showTotalCount: false,
                  itemCount: 2,
                  itemBorderWidth: 1,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 200,
                  child: LinearProgressIndicator(
                    value: 0.4,
                    backgroundColor: Colors.green.shade200,
                    minHeight: 8,
                    borderRadius: BorderRadius.circular(10),
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
