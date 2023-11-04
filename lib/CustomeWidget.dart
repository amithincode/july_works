import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//class changing to widget,add custome requrements
void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: CustomeWidget1(onpress: () {  },),
    );
  }));
}

class CustomeWidget1 extends StatelessWidget{
  final Color ? clr;
  final Image ? image1234;
  final Text ? textsss;
  final
  VoidCallback onpress;
  CustomeWidget1({this.textsss,this.clr,this.image1234,required this.onpress});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Card(
       color: clr,
       child: ListTile(
         leading: image1234,
         title: textsss,
         onTap: onpress,
       ),
     ),
   );
  }
}