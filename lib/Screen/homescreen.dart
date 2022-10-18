import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:whatsappagain/CustomeWidget/ChatTitle.dart';
import 'package:whatsappagain/Screen/chatscreen.dart';
import 'package:whatsappagain/Screen/storybtn.dart';
// import 'package:whatsappagain/widgets/storybtn.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> imageUrl = [
    "https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/0.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff251B37),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg'),
                    ),
                    Icon(Icons.search, color: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: const [
                    Text(
                      'Messages',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 100,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            storyButton(imageUrl[0], "Emma"),
                            storyButton(imageUrl[1], "Jack"),
                            storyButton(imageUrl[2], "Charlotte"),
                            storyButton(imageUrl[3], "Lee"),
                            storyButton(imageUrl[4], "Ava"),
                            storyButton(imageUrl[5], "Dat"),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => chatScreen()));
                        },
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: [
                            ChatTile(imageUrl[0], "Emma",
                                "text of the last message", "12:19", true),
                            ChatTile(imageUrl[1], "Jack",
                                "text of the last message", "9:55", true),
                            ChatTile(imageUrl[2], "Charlotte", " You: Ok",
                                "Sun", false),
                            ChatTile(imageUrl[3], "Lee",
                                "Text of the last message", "Tue", false),
                            ChatTile(
                                imageUrl[4], "Ava", "Credit GF", "", false),
                            ChatTile(imageUrl[5], "Dat",
                                "Text of the last message", "12Feb", false),
                          ],
                        ),
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
