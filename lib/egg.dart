import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Farmersfresh(),
    ),
  );
}

class Farmersfresh extends StatefulWidget {
  @override
  State<Farmersfresh> createState() => _FarmersfreshState();
}

class _FarmersfreshState extends State<Farmersfresh> {
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
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(Icons.location_on_outlined),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35, top: 20),
                child: Text(
                  "kochi",
                  style: TextStyle(fontSize: 18),
                ),
              ),
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
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: CarouselSlider(
              items: [
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text('Item 1', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text('Item 2', style: TextStyle(fontSize: 24)),
                  ),
                ),
                Container(
                  color: Colors.green,
                  child: Center(
                    child: Text('Item 3', style: TextStyle(fontSize: 24)),
                  ),
                ),
                // Add more items as needed
              ],
              options: CarouselOptions(
                autoPlay: false, // Disable auto-play for non-looping carousel
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                viewportFraction: 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
