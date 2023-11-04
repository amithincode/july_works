import 'dart:html';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Example_tab(),
    );
  }));
}

class Example_tab extends StatefulWidget {
  @override
  State<Example_tab> createState() => _Example_tabState();
}

class _Example_tabState extends State<Example_tab> {
  var name = [
    "kriss Benwat",
    "Rezi makarov",
    "Gustav Lemelo",
    "Bob Ryder",
    "Ken Simada",
    "Emma Walkins",
    "gilbert Hamminway",
    "bella hammerrs"
  ];
  var screen = [
    Text("Home"),
    Text("Stories"),
    Text("online"),
  ];

  @override
  int index = 0;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            actions: [
              SizedBox(height: 6,width:100,
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Colors.blueAccent,),
                  child: Row(
                    children: [Icon(Icons.add), Text("   Add New")],
                  ),
                ),
              )
            ],
            title: Text(
              "Conversations",
              style: TextStyle(color: Colors.black87,fontSize: 28),
            ),
            backgroundColor: Colors.green),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 19,
          selectedItemColor: Colors.black87,
          unselectedItemColor: Colors.white,
          currentIndex: index,
          type: BottomNavigationBarType.shifting,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: "Chats",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.wifi_channel),
                label: "Channels",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.contact_page_outlined),
                label: "Profile",
                backgroundColor: Colors.green),
          ],
        ),
        body:
        ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  name[index],
                ),
                subtitle: Text(" Good to know"),
                trailing: Text("Today"),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: name.length),
    );


  }


}