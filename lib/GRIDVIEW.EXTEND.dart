import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Gridview_extent(),
    );
  }));
}
class Gridview_extent extends StatelessWidget {
  var img = [
    "assets/iconss/tree.png",
    "assets/iconss/tree.png",
    "assets/iconss/tree.png",
    "assets/iconss/tree.png",
    "assets/iconss/tree.png",

  ];
  var colourz = [
    Colors.blue,
    Colors.grey,
    Colors.green,
    Colors.pinkAccent,
    Colors.teal,
    Colors.blue,
    Colors.grey,
    Colors.green,
    Colors.pinkAccent,
    Colors.teal,
    Colors.grey,
    Colors.green,
    Colors.pinkAccent,
    Colors.teal,
    // Colors.lime,
    // Colors.red,
    // Colors.indigo,
    // Colors.deepOrangeAccent,
    // Colors.lightGreenAccent,
    // Colors.redAccent,
    // Colors.teal,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Gridview_extent"),
          centerTitle: true,
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 200,
          children: List.generate(5, (index) {
            return Card(
              color: colourz[index],
              child: Column(
                children: [Image.asset(img[index])],
              ),
            );
          }),
        ));
  }
}