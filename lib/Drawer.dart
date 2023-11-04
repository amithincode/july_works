import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: Drawerreg(),
    );
  }));
}

class Drawerreg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
            "Drawer",
            style: TextStyle(fontSize: 23),
          ),centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("AMITH"),
                accountEmail: Text("amithpradeep33@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/iconss/dog-316598_1280.jpg"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/iconss/dog-316598_1280.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/iconss/dog-316598_1280.jpg"),
                  ),
                ],
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/iconss/girl-face rainbow1280.jpg"),
                        fit: BoxFit.cover)),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
              ),
              ListTile(
                leading: Icon(Icons.forward_to_inbox_outlined),
                title: Text("Inbox"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Outbox"),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorites"),
              ),
              ListTile(
                leading: Icon(Icons.archive),
                title: Text("Archive"),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Trash"),
              ),
              ListTile(
                leading: Icon(Icons.warning_amber),
                title: Text("Spam"),
              ),
            ],
          ),
        ),
      body: Padding(
        padding: const EdgeInsets.all(120),
        child: Text("DRAWER",style: TextStyle(color: Colors.black87,fontSize: 36),),

      ),
    );
  }
}
