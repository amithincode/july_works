import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Foodappui(),
    );
  }));
}

class Foodappui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        expandedHeight: 120,
        title: Text(
          "FOOD SPOT",
          style: TextStyle(
              color: Colors.black, fontSize: 27, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SizedBox(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/iconss/img_18.png",
                fit: BoxFit.cover,
              ),
            )),
          )
        ],
        bottom: AppBar(
          backgroundColor: Colors.white,
           title:Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.7),
                    blurRadius: 3,
                  ),
                ]),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  hintText: "search", prefixIcon: Icon(Icons.search)),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 40,
                width: 47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
              ),
            )
          ],
        ),
      )
    ]));
  }
}
