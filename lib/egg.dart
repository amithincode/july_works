import 'package:carousel_slider/carousel_slider.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
;
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
            home: workslider(),
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
          )));
}

class workslider extends StatefulWidget {
  @override
  State<workslider> createState() => _worksliderState();
}

class _worksliderState extends State<workslider> {
  int index = 0;

  var image = [
    "assets/iconss/istockphoto-1163361097-612x612.jpg",
    "assets/iconss/istockphoto-1177383901-612x612.jpg",
    "assets/iconss/img_10.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [Icon(Icons.location_on), Text("  Kochi")],
            ),
          ),
        ],
        title: Text(
          "FARMERS FRESH ZONE",
          style: TextStyle(color: Colors.white),
        ),
        bottom: AppBar(
          backgroundColor: Colors.green,
          title: SizedBox(
            width: 500,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for vegetables and fruits",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.green,
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
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                      "EXOTIC CUTS",
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
                        autoPlay: true,
                        // Disable auto-play for non-looping carousel
                        enlargeCenterPage: true,
                        aspectRatio: 1.9,
                        viewportFraction: 0.8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54, width: 1),
                ),
                height: 70,
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.timer),
                        SizedBox(height: 20, child: Text("30 min policy"))
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.contacts),
                        SizedBox(height: 20, child: Text("tracebility"))
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.home),
                        SizedBox(height: 20, child: Text("local surrounding"))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 10),
                child: Text(
                  "Shop by Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 130),
            child: BottomNavigationBar(
                backgroundColor: Colors.white,
                selectedItemColor: Colors.green,
                unselectedItemColor: Colors.green,
                currentIndex: index,
                type: BottomNavigationBarType.fixed,
                onTap: (tapindex) {
                  setState(() {
                    index = tapindex;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart), label: "Cart"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_box), label: "Account")
                ]),
          )
        ]),
      ),
    ]));
  }
}
