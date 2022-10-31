import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff251B37),
            leading: const Icon(Icons.arrow_back),
            title: const Text(
              'Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          body: Column(
            children: [
              const ListTile(
                leading: CircleAvatar(
                  // backgroundImage: AssetImage(
                  //   'images/man.jpg',
                  // ),
                  //  backgroundColor: Colors.greenAccent
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg'),
                  radius: 20,
                ),
                title: Text(
                  ' Bilal Ahmad',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                subtitle: Text(
                  'Today is Reader Tomorrow is Leader',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                trailing: Icon(
                  Icons.qr_code,
                  size: 27,
                  color: Colors.green,
                ),
              ),
              const ListTile(
                leading: Icon(Icons.key),
                title: Text('Account',
                    style: TextStyle(
                      fontSize: 19,
                    )),
                subtitle: Text(
                  'Privacy,security,change number',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.chat),
                title: Text('Chats',
                    style: TextStyle(
                      fontSize: 19,
                    )),
                subtitle: Text(
                  'Theme,wallpapers,chat history',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notifications',
                    style: TextStyle(
                      fontSize: 19,
                    )),
                subtitle: Text(
                  'Message, group and calls',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.storage),
                title: Text('Storge and data',
                    style: TextStyle(fontSize: 19, color: Colors.black)),
                subtitle: Text(
                  'Network usage ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.help),
                title: Text('Help',
                    style: TextStyle(
                      fontSize: 19,
                    )),
                subtitle: Text(
                  'Help centre',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.people_alt_rounded),
                title: Text('Invite friend',
                    style: TextStyle(
                      fontSize: 19,
                    )),
                subtitle: Text(
                  'Help centre',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100, top: 50),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 180),
                      child: Text(
                        'from',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Icon(Icons.facebook),
                        Text(
                          'Meta',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
