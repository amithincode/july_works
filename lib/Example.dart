import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: OYO(),
    );
  }));
}

class OYO extends StatefulWidget {
  @override
  State<OYO> createState() => _OYOState();
}

class _OYOState extends State<OYO> {
  var colorzz = [Colors.redAccent, Colors.lightBlue, Colors.orange];

  var IconSs = [
    Icons.hotel,
    Icons.local_restaurant_outlined,
    Icons.local_cafe_rounded,
  ];

  var text = ["Hotel", "Restaurant", "Cafe"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 125,
            leading: Icon(Icons.menu_rounded),
            floating: false, // Set to false if you don't want it to float
            title: Text("Type your Location"),
            centerTitle: true,
            backgroundColor: Colors.lightBlueAccent,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(44),
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Kakanad, Kochi",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
            ),
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    color: colorzz[index],
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30),
                          child: Icon(
                            IconSs[index],
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            text[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: colorzz.length,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage("assets/iconss/img_1.png")),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
