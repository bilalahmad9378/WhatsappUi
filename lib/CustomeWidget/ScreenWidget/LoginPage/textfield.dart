import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  textfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              hintText: "Email",
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.white),
              hintStyle: TextStyle(color: Colors.white),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            )),
      ],
    );
  }
}

Widget textfieldpass() {
  return TextFormField(
    style: TextStyle(color: Colors.white),
    decoration: const InputDecoration(
        hintText: 'Enter Password',
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ))),
  );
}
