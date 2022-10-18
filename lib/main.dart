import 'package:flutter/material.dart';
import 'package:whatsappagain/Screen/chatscreen.dart';
import 'package:whatsappagain/Screen/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
