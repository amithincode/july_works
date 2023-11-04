import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: BURGERAPP(),
    );
  }));
}

class BURGERAPP extends StatefulWidget {
  @override
  State<BURGERAPP> createState() => _BURGERAPPState();
}

class _BURGERAPPState extends State<BURGERAPP> {
  var screen = [
    Text("Home"),
    Lunches(),
    Text("Stories"),
    Text("online"),
  ];
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "BUGGER'S",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black87,
                  fontStyle: FontStyle.italic),
            ),
            backgroundColor: Colors.orangeAccent,
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(
                    child: Text(
                      "Lunches",
                      style: TextStyle(fontSize: 16.0),
                    )),
                Tab(
                  child: Text("Cart"),
                ),
              ],
              labelColor: Colors.black87,
              labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
              //add just padding
              labelStyle: TextStyle(fontSize: 19), //change the size
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            // mouseCursor: MouseCursor.uncontrolled,
            selectedFontSize: 19,
            selectedItemColor: Colors.black87,
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
                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.lunch_dining_outlined),
                  label: "Lunches",
                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: "Cart",
                  backgroundColor: Colors.orange),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      //add a argument use to this
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loginpage()));
                    },
                    icon: Icon(Icons.account_circle_rounded),
                  ),
                  label: "Account",
                  backgroundColor: Colors.deepPurple),
            ],
          ),
          body: Center(child: screen[index]),
        ));
  }
}

class Lunches extends StatelessWidget {
  var colorz = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.purple,
    Colors.indigo,
    Colors.orange,
    Colors.pink,
    Colors.teal,
    Colors.redAccent,
    Colors.green,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      body: ListView.separated(itemBuilder: (BuildContext context, index) {
        return ListTile(

          leading: Padding(padding: const EdgeInsets.only(top: 1,right: 150),
            child: Container(
              color: colorz[index],
              width: 100,
              height:250,
              child: Column(
                children: [Text("1"), Text("tuesday")],
              ),

            ),
          ),
          title: Text("burgers"),
        );
      },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        }, itemCount: colorz.length, 
      ));
}}