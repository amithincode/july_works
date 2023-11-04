import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Farmersfresh(),
    );
  }));
}

class Farmersfresh extends StatefulWidget {
  @override
  State<Farmersfresh> createState() => _FarmersfreshState();
}

class _FarmersfreshState extends State<Farmersfresh> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
        SliverAppBar(
        expandedHeight: 125,
        title: Text(
          "FARMERS FRESH ZONE",
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: Colors.green,
        actions: [
          Padding(
              padding: const EdgeInsets.only(left: 5),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_on_outlined),
              )),
          Padding(
            padding: const EdgeInsets.only(right: 35, top: 20),
            child: Text(
              "kochi",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
        bottom: AppBar(
            backgroundColor: Colors.green,
            title: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(80),
                ),
                height: 44,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search for vegetables and fruits...",
                      prefixIcon: Icon(Icons.search)),
                ))),
      ),
      SliverList(
          delegate: SliverChildListDelegate([
          SizedBox(
          height: 50,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
          decoration: BoxDecoration(
          borderRadius:
          const BorderRadius.all(Radius.circular(20)),
      border: Border.all(color: Colors.green),
           ),
             height: 20,
    width: 120,
    child: const Center(
    child: Text(
    "VEGETABLES",
    style: TextStyle(fontSize: 12, color: Colors.green),
    ))),
    Container(
    decoration: BoxDecoration(
    borderRadius:
    const BorderRadius.all(Radius.circular(100)),
    border: Border.all(color: Colors.green),
    ),
    height: 20,
    width: 120,
    child: const Center(
    child: Text(
    "FRUITS",
    style: TextStyle(fontSize: 12, color: Colors.green),
    ))),


    SliverToBoxAdapter(
    child: Padding(
    padding: const EdgeInsets.all(10),
    child: CarouselSlider(
    items: [
    Container(
    child: Image.asset(
    "assets/iconss/istockphoto-1163361097-612x612.jpg"),
    ),
    Container(
    child: Image.asset(
    "assets/iconss/istockphoto-1177383901-612x612.jpg"),
    ),
    Container(
    child: Image.asset("assets/iconss/img_9.png"),
    ),
    Container(
    child: Image.asset("assets/iconss/img_10.png"),
    )
    ],
    options: CarouselOptions(
    autoPlay: true, // Disable auto-play for non-looping carousel
    enlargeCenterPage: true,
    aspectRatio: 1.9,
    viewportFraction: 0.8,
    ),
    ),
    ),
    ),

    ],

    ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: index,
    type: BottomNavigationBarType.shifting,
    selectedItemColor: Colors.black,
    onTap: (Tapindex) {
    setState(() {
    index = Tapindex;
    });
    },
    items: [
    BottomNavigationBarItem(
    icon: Icon(
    Icons.home,
    color: Colors.green,
    ),
    label: "home",
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.add_box_rounded,
    color: Colors.green,
    ),
    label: "Card",
    ),
    BottomNavigationBarItem(
    icon: Icon(
    Icons.account_circle_rounded,
    color: Colors.green,
    ),
    label: "Account",
    )
    ]
    )
    ,
    );
  }
}
