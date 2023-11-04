import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: STACK(),
    );
  }));
}

class STACK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("STACK"),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                color: Colors.yellow,
                height: 10,
                width: 400,
              ),
              top: 0,
              bottom: 0,
            ),

            Positioned(
              child: Container(
                color: Colors.transparent,
                height: 170,
                width: 10,
              ),
              left: 109,
              right: 109,
              top: 110,
            ),
            Positioned(
                left: 59,
                right: 59,
                top: 100,
                child: Container(
                  color: Colors.deepPurple,
                  child: Image(image: AssetImage("assets/iconss/devil.png")),
                  height: 220,
                  width: 120,
                )),
            //   Positioned(child:
            // Container(color: Colors.blueAccent,
            // height: 170,width:170,),
            //left: 39,right:39,top: 250,bottom: 250,
            //),
          ],
        ),
      ),
    );
  }
}
