import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Silvers(),
    );
  }));
}

class Silvers extends StatelessWidget {
  var colorzz = [
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text(
              "Silver",
              style: TextStyle(
                fontSize: 26,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.accessibility_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.construction_rounded)),
            ],
            bottom: AppBar(
              backgroundColor: Colors.yellow,
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search some thing",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            flexibleSpace: Container(
              color: Colors.yellow,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Silver.com",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              height: 80,
              color: colorzz[index],
            );
          }, childCount: colorzz.length)),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  height: 80,
                  color: colorzz[index],
                );
              }, childCount: colorzz.length)
          ),
        ],
      ),
    );
  }
}
