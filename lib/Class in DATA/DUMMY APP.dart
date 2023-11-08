import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'Dummy 2.dart';
import 'Dummy Data.dart';

//mainpage
void main() {
  runApp(MaterialApp(

    home: Dummydata(),
    routes: {
      "secondpage": (context) => Productlist(),
    },
  ));
}

class Dummydata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dummyapp"),
        centerTitle: true,
      ),
      body: ListView(
          children: Dummyproducts.map((product) => TextButton(
              onPressed: () => gotoNext(context, product["id"]),
              child: Text(
                "${product["name"]}",

              )))

              .toList()),

    );
  }

  void gotoNext(BuildContext context, product) {
    Navigator.of(context).pushNamed("secondpage", arguments: product);
  }
}
