import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(DevicePreview(
      builder: (context) {
        return MaterialApp(
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          home: Lottiefiles(),
        );
      }
  ));
}

class Lottiefiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("LottieAnimation"),
      backgroundColor: Colors.green,
      centerTitle: true,),
      body: ListView(
        children: [
          Lottie.asset("assets/Animation/animation_lnsgqfeq.json"),
Lottie.network("https://lottie.host/cd817de3-684c-4609-819d-516dc1cfbdee/B7jwxrMKsN.json")
        ],
      ),
    );
  }
}