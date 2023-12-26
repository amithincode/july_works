import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Textstyle1(),
    );
  }));
}

class Textstyle1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        RichText(
          text: TextSpan(
              text: "IT'S NOT"
                  " ABOUT "
                  "HAVING TIME,"
                  "IT'S ABOUT "
                  "MAKING TIME "
                  "TO ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 54),
              children: [
            TextSpan(
                text: "BeFit",
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 54))
          ])));
  }
}
// At same sentance two styles of selected texts