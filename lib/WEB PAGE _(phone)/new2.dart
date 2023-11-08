import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'WEB Data2.dart';

import 'new3.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        home: phones(),
        routes: {
          "thirdpage": (context) => phoneshow(),
        },
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      )));
}

class phones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phones"),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: dummypage2
            .map(
              (product1) => TextButton(
              onPressed: () => gotoNext(context, product1["id"]),
              child: Text(
                "${product1["name"]}",
                style: const TextStyle(fontSize: 20),
              )),
        )
            .toList(),
      ),
    );
  }

  gotoNext(BuildContext context, product1) {
    Navigator.of(context).pushNamed("thirdpage", arguments: product1);
  }
}