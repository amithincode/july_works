import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        home: GridView_Count(),
      );
    }
  ));
}

class GridView_Count extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GRIDVIEW COUNT"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
            20,
            (index) {
              return Card(
                child: Column(
                  children: [
                    Image.asset("assets/iconss/greenperson1.jpg"),
                    Text("APT002L")
                  ],
                ),
              );
            },
          ),
        ));
  }
}
