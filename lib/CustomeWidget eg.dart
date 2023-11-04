import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:july_flutter_dart/CustomeWidget.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Customewidgeteg(),
    );
  }));
}

class Customewidgeteg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CUSTOME WIDGET",style: TextStyle(color: Colors.black87),),backgroundColor: Colors.orange,
      centerTitle: true,),
      body: //call CustomeWidget1 create changed
          CustomeWidget1(
            onpress: () {},
            image1234: Image.asset("assets/iconss/dog-316598_1280.jpg"),
            textsss: Text("CUSTOME WIDGET"),
            clr: Colors.orangeAccent,
          )

    );
  }
}
