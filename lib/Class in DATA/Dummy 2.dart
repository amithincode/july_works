import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dummy Data.dart';



class Productlist extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    final id =ModalRoute.of(context)?.settings.arguments;
    final product = Dummyproducts.firstWhere((product) => product["id"] == id);
    return Scaffold(
      appBar:  AppBar(
        title: Text("Products"),

      ),
      body: ListView(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(product["image"]),
            ),
          ),
          Text("${product["name"]}",
          style: TextStyle(fontSize: 30),),
          Text("${product["description"]}",
          style: TextStyle(fontSize: 30),
          ),


        ],
      ),
    );
  }
}
