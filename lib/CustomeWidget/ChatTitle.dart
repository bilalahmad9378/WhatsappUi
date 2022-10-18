import 'package:flutter/material.dart';

Widget ChatTile(
    String imgurl, String username, String msg, String time, bool icon) {
  return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgurl),
      ),
      title: Text(username),
      subtitle: Text(msg),
      // trailing: Text('12:19'),
      trailing: Column(
        children: [
          Text(time),
          icon
              ? CircleAvatar(
                  radius: 10, child: Text("1"), backgroundColor: Colors.red)
              : CircleAvatar(
                  radius: 0,
                  backgroundColor: Colors.transparent,
                )
        ],
      ));
}
