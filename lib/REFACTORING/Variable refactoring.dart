import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        home: EGG(),
      );
    }
  ));
}

class EGG extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    Widget love = Icon(Icons.favorite);
    Widget add =Icon(Icons.add);
    Widget IconRows = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        add,
        Icon(Icons.favorite),
        Icon(Icons.favorite)
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("mallu developer"),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              add,
              Icon(Icons.favorite),
              Icon(Icons.favorite)
            ],
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          love,
          Icon(Icons.add),
          Icon(Icons.add)
        ],
      ),

          IconRows,
          IconRows,
          IconRows,
          IconRows,

        ],
      ),
    );
  }
}
//use clarity name for variable refactoring,
