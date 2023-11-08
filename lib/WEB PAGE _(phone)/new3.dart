import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'WEB Data2.dart';


class phoneshow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id =ModalRoute.of(context)?.settings.arguments;
    final product1 = dummypage2.firstWhere((product1) => product1["id"] == id);
    return Scaffold(

      body: ListView(children: [
        Center(child: Text("${product1["name"]}")),
        Image(image: NetworkImage("${product1["image"]}")),
        Text("${product1["description"]}",style: TextStyle(fontSize: 30),),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text("${product1["price"]}"),
        ),
        ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,side: BorderSide(width: 1.5)),
            onPressed: (){}, child:Text("Buy"))

      ],),

    );
  }


}