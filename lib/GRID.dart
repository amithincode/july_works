import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      home: Gdfixedcross(),
    );
  }));
}

class Gdfixedcross extends StatefulWidget {
  @override
  State<Gdfixedcross> createState() => _GdfixedcrossState();
}

class _GdfixedcrossState extends State<Gdfixedcross> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("CONTACTS"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 12, crossAxisSpacing: 12),
        children: [
          Card(
            color: Colors.yellow,
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("RAMAN")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("MADAVAN")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("RAHUL")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("PRAVEEN")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("ABISHEK")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("YADAV")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("KRISHNA")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("AMITH")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("ABINAV")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("AMAL")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("SACHIN")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("KRISHNA")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("KRISHNA")
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/iconss/greenperson1.jpg"),
                ),
                Text("KRISHNA")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
