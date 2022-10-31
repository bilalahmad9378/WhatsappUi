import 'package:flutter/material.dart';
import 'package:whatsappagain/Screen/homescreen.dart';

class chatScreen extends StatelessWidget {
  const chatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xfff251B37),
            leading: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Icon(
                  Icons.arrow_back,
                )),
            leadingWidth: 20,
            title: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 17,
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(' Area Willaim'),
              ],
            ),
            actions: [
              Icon(
                Icons.videocam_outlined,
                size: 35,
                color: Colors.red[100],
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.local_phone_outlined,
                size: 32,
                color: Colors.red[100],
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    '14 SEPTEMBER',
                    style: TextStyle(color: Colors.grey[350]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 60),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        height: 80,
                        width: 280,
                        child: const ListTile(
                          title: Text('Andreson'),
                          subtitle: Text(
                            'This is slimmie ,, in the natural habibat',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                        ),
                        height: 80,
                        width: 280,
                        child: const ListTile(
                          subtitle: Text(
                            'Malware bytes is pushing people to busy their shoes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 80),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red[200],
                        ),
                        height: 105,
                        width: 300,
                        child: Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 25,
                                child: Icon(
                                  Icons.play_arrow_rounded,
                                  size: 35,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.multitrack_audio,
                              size: 45,
                            ),
                            Icon(
                              Icons.multitrack_audio,
                              size: 45,
                            ),
                            Icon(
                              Icons.multitrack_audio,
                              size: 45,
                            ),
                            Icon(
                              Icons.multitrack_audio,
                              size: 45,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text('Andersion'),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 190),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg'),
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red[100]),
                      child: Image.network(
                        'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg',
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
