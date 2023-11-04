
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Expandedwidget() ,
    );
  }));
}

class Expandedwidget extends StatelessWidget {  @override
  Widget build(BuildContext context) {
   return Scaffold(
appBar: AppBar(
  title:  Text("Expanded widget"),
  centerTitle: true,
  backgroundColor: Colors.redAccent,
),
     body: Column(
       children: [
         Container(
           color: Colors.cyan,height: 100,width: 250,),
         Expanded(child: Container(color: Colors.cyanAccent,height: 100,width: 250,)),
         Expanded(child: Container(color: Colors.black45,height: 100,width: 250,)),
         Expanded(child: Container(color: Colors.cyanAccent,height: 100,width: 250,)),
       ],
     ),
   );
  }
}
