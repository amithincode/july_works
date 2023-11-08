import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: staggered(),
    );
  }));
}

class staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Staggered grid view"),
      centerTitle: true,),
        body: SafeArea(
          child: StaggeredGrid.count(crossAxisCount: 4, children: [
      StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 3.5,
            child: Card(
              color: Colors.black,
              child: Image(
                image: AssetImage("assets/iconss/img.png"),
                fit: BoxFit.cover,
              ),
            )),
      StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Card(
              color: Colors.green,
              child: Image(
                image: AssetImage("assets/iconss/img.png"),
                fit: BoxFit.cover,
              ),
            )),
      StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Card(
              color: Colors.green,
              child: Image(
                image: AssetImage("assets/iconss/img.png"),
                fit: BoxFit.cover,
              ),
            )),
      StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
              color: Colors.green,
              child: Image(
                image: AssetImage("assets/iconss/img.png"),
                fit: BoxFit.cover,
              ),
            )),
      StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
              color: Colors.green,
              child: Image(
                image: AssetImage("assets/iconss/img.png"),
                fit: BoxFit.cover,
              ),
            )),
      StaggeredGridTile.count(
            crossAxisCellCount: 5,
            mainAxisCellCount: 3,
            child: Card(
              color: Colors.green,
              child: Image(
                image: AssetImage("assets/iconss/img.png"),
                fit: BoxFit.cover,
              ),
            )),
    ]),
        ));
  }
}
