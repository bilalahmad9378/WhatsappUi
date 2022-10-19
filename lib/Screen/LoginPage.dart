import 'package:flutter/material.dart';
import 'package:whatsappagain/Screen/chatscreen.dart';
// ignore: depend_on_referenced_packages
// import 'package:flutter_chat_ui/screens/home_screen.dart';
// import 'package:flutter_chat_ui/widgets/textFormField_widget.dart';
import 'package:whatsappagain/Screen/homescreen.dart';
// import 'package:flyflutter/demo.dart';
// import 'package:flyflutter/main.dart';

class LoginPage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color(0xFF06283D),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 60, top: 200, right: 40),
                    child: Icon(
                      Icons.fingerprint,
                      color: Colors.red.shade200,
                      size: 80,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40, right: 30),
                    child: Text(
                      'Sign in with Touch ID',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        hintText: 'Enter Email',
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 330,
                    height: 50,
                    child: Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: RawMaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        fillColor: Colors.red.shade100,
                        onPressed: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => new HomeScreen(),
                              ));
                        }),
                        child: const Text(
                          'Login with Email',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "New User ? Sign Up",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Help ?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )));
  }
}
