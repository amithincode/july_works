import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: bottomnavigation(),
    );
  }));
}

class bottomnavigation extends StatefulWidget {

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  var screen = [
    Text("Home"),
    Text("Chats"),
    Text("Stories"),
    Text("online"),
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Bottom navigation"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // mouseCursor: MouseCursor.uncontrolled,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        type: BottomNavigationBarType.shifting,
        onTap: (Tapindex) {
          setState(() {
            index = Tapindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chats",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: Icon(Icons.amp_stories_outlined),
              label: "Stories",
              backgroundColor: Colors.deepPurple),
          BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  //add a argument use to this
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginpage()));
                },
                icon: Icon(Icons.logout),
              ),
              label: "Log out",
              backgroundColor: Colors.deepPurple),
        ],
      ),
      body: Center(child: screen[index]),
    );
  }
}
