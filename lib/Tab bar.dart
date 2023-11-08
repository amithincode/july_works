import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:july_flutter_dart/GRID.dart';
import 'package:july_flutter_dart/GRIDVIEW.EXTEND.dart';
import 'package:july_flutter_dart/Stack.dart';

import 'Listview.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: Tabbar1(),
    );
  }));
}

class Tabbar1 extends StatefulWidget {
  @override
  State<Tabbar1> createState() => _Tabbar1State();
}

class _Tabbar1State extends State<Tabbar1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        //above 3 more,sacaffold rap with widget
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Facebook",
              style: TextStyle(fontSize: 27),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Icon(Icons.add_card),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Icon(Icons.accessibility_outlined),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("payment")),
                    PopupMenuItem(child: Text("New broadcast")),
                    PopupMenuItem(child: Text("Settings")),
                    PopupMenuItem(child: Text("Favorate")),
                  ];
                }),
              )
            ],
            bottom: TabBar(tabs: [
              Tab(
                child: Icon(Icons.contact_support_rounded),),
              Tab(
                child: Text("chat"),),
              Tab(
                child: Text("calls"),
              ),
              Tab(
                child: Text("Stories"),)
            ]),
          ),

          body: TabBarView(children: [
            Gridview_extent() ,
            calls(),
            Homepage(),
           STACK(),
          ]),
        )
    );

  }

}
class  calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("CONTACT LIST"),),
    );
  }
}
