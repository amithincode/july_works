import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: ProfileUi(),
    );
  }));
}

class ProfileUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(children: [
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp))
          ],
        ),
      ),
      //   SizedBox(height: 50,),
      Container(
        child: Center(
          child: CircleAvatar(
            radius: 100,
            backgroundImage:
                AssetImage("assets/iconss/girl-face rainbow1280.jpg"),
          ),
        ),
      ),
      Container(
          child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          SvgPicture.asset(
            "assets/SVG/fb.svg",
            height: 50,
            width: 50,
          ),
          SvgPicture.asset(
            "assets/SVG/googleplus.svg",
            height: 50,
            width: 50,
          ),
          SvgPicture.asset(
            "assets/SVG/twitter.svg",
            height: 50,
            width: 50,
          ),
          SvgPicture.asset(
            "assets/SVG/linkedin.svg",
            height: 50,
            width: 50,
          ),
        ]),
      )),
      SizedBox(height: 30),
      ListTile(
        title: Center(
            child: Text(
          "Chromicle",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),
        subtitle: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("@amFOSS",
              style: TextStyle(color: Colors.black, fontSize: 14)),
        )),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Text(
          "Mobile App Developer and Open source enthusiastic",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: SizedBox(
          width: 300,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Colors.grey,
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Privacy",
                  prefixIcon: Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: SizedBox(
          width: 300,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Colors.grey,
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Purchase History",
                  prefixIcon: Icon(
                    Icons.history,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: SizedBox(
          width: 300,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Colors.grey,
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Help & Support",
                  prefixIcon: Icon(
                    Icons.help_outline_rounded,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: SizedBox(
          width: 300,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Colors.grey,
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Settings",
                  prefixIcon: Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
        child: SizedBox(
          width: 300,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Colors.grey,
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Invite a Friend",
                  prefixIcon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(Icons.arrow_forward_ios_rounded)),
            ),
          ),
        ),
      ),
    ])));
  }
}
