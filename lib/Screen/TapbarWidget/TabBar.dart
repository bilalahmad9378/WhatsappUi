import 'package:flutter/material.dart';
import 'package:whatsappagain/Screen/Setting/setting.dart';
import 'package:whatsappagain/Screen/homescreen.dart';
import 'package:whatsappagain/Screen/storybtn.dart';

import '../../CustomeWidget/ChatTitle.dart';
import '../../CustomeWidget/ScreenWidget/LoginPage/textfield.dart';
import '../chatscreen.dart';

class whatsappscreen extends StatelessWidget {
  whatsappscreen({Key? key}) : super(key: key);
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tab Bar'),
          bottom: TabBar(indicatorColor: Colors.amber, tabs: [
            Text(
              'HomeScreen',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              'ChatScreen',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              'Setting',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )
          ]),
        ),
        body: TabBarView(children: [
          HomeScreen(),
          chatScreen(),
          Setting(),

          //
          // Container(
          //   height: 100,
          //   width: 200,
          //   color: Colors.blue,
          //   child: Text('Status'),
          // )
        ]),
      ),
    );
  }
}
