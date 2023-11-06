import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Dialogebox(),
    );
  }));
}

class Dialogebox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert BOX"),
        centerTitle: true,
      ),
      body:
      Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text("Are you sure to EXIT"),
              content:Text( "sure...."),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("cancel")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("back")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("exit"))
              ],
            );
          });
        }, child: Text("Exit")),
      ),

    );
  }
}

