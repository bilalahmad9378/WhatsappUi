import 'package:flutter/material.dart';

Widget storyButton(String imgUrl, String userName) {
  return Padding(
    padding: EdgeInsets.only(right: 10),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          userName,
          style: TextStyle(color: Colors.black),
        )
      ],
    ),
  );
}
