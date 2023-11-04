import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Drawer.dart';

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

  var text1 = ["Hotel", "Restaurant", "Cafe",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          //appbar pinned @scrolling
          expandedHeight: 125,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Drawerreg1()));
            },
            icon: Icon(Icons.menu),
          ),
          floating: true,
          title: Text(
            "Type your Location",
            style: TextStyle(fontSize: 23),
          ),
          centerTitle: true,
          backgroundColor: Colors.orange,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: PopupMenuButton(itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Book a room")),
                  PopupMenuItem(child: Text("Coupons & Offers")),
                  PopupMenuItem(child: Text("Villas")),
                  PopupMenuItem(child: Text("Settings")),
                ];
              }),
            )
          ],
          bottom: AppBar(
              backgroundColor: Colors.orange,
              title: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(80),
                  ),
                  height: 44,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Kakanad,kochi",
                        prefixIcon: Icon(Icons.search)),
                  ))),

        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Card(
                  color: colorzz[index],
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Icon(
                          IconSs[index],
                          color: Colors.white,
                          size: 35,
                        ),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(text1[index],style: TextStyle(fontSize: 16,color: Colors.white),),
                      )
                        
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: colorzz.length,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 15),
        ),
      Container(
        child:SliverToBoxAdapter(
        child: Card( child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.all(100),
            child: Lottie.asset("assets/Animation/animation_lnxdy2ay.json"),
            
          ),]
     ))

      ),),

        Container(
          child: SliverToBoxAdapter(
            child: Card(

                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                  Image(
                    image: AssetImage(
                      "assets/iconss/img_6.png",
                    ),
                    height: 280,
                    width: 350,
                  ),
                 Text(
                      "Awesome room near Kakkanad",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),


                  Text(
                      "Kakkanad,Kochi",
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),

                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star_half_sharp,color: Colors.green),
                        Text(
                          "(220 reviews)",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ),


        ),
        Container(
          child: SliverToBoxAdapter(
            child: Card(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Image(
                    image: AssetImage(
                      "assets/iconss/img_5.png",
                    ),
                    height: 280,
                    width: 350,
                  ),
                  Text(
                    "Peaceful Room",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Kakkanad,Kochi",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star_half_sharp,color: Colors.green),
                        Text(
                          "(220 reviews)",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ),
        ),
        Container(
          child: SliverToBoxAdapter(
            child: Card(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Image(
                    image: AssetImage(
                      "assets/iconss/img_7.png",
                    ),
                    height: 280,
                    width: 350,
                  ),
                  Text(
                    "Vinage room near kochi",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Kakkanad,Kochi",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star_half_sharp,color: Colors.green),
                        Text(
                          "(220 reviews)",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ),
        ),
        Container(
          child: SliverToBoxAdapter(
            child: Card(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Image(
                    image: AssetImage(
                      "assets/iconss/img_8.png",
                    ),
                    height: 280,
                    width: 350,
                  ),
                  Text(
                    "5 Star Room Available",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Kakkanad,Kochi",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Icon(Icons.star,color: Colors.green,),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star,color: Colors.green),
                        Icon(Icons.star_half_sharp,color: Colors.green),
                        Text(
                          "(220 reviews)",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ])),
          ),
        ),
      ],
    ),


    );
  }
}

class Drawerreg1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("AMITH"),
            accountEmail: Text("amithpradeep33@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/iconss/dog-316598_1280.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/iconss/dog-316598_1280.jpg"),
              ),
              CircleAvatar(
                backgroundImage:
                    AssetImage("assets/iconss/dog-316598_1280.jpg"),
              ),
            ],
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("assets/iconss/girl-face rainbow1280.jpg"),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("home"),
          ),
          ListTile(
            leading: Icon(Icons.forward_to_inbox_outlined),
            title: Text("Inbox"),
          ),
          ListTile(
            leading: Icon(Icons.send),
            title: Text("Outbox"),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
          ),
          ListTile(
            leading: Icon(Icons.archive),
            title: Text("Archive"),
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Trash"),
          ),
          ListTile(
            leading: Icon(Icons.warning_amber),
            title: Text("Spam"),
          ),
        ],
      ),
    );
  }
}
