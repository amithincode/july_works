 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home3 extends StatelessWidget{
  final data1;
  Home3({Key? key,required this.data1}):super(key: key);
  @override
  Widget build(BuildContext context) {
    var name =data1[0]['name'];
   return Scaffold(
     appBar: AppBar(
       title: Text("Welcome $name"),
     ),
     body: Center(
       child: Text('success'),
     ),
   );
  }

}