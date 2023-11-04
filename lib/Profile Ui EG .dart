import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        home: ProfileUI2(),
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      )));
}

class ProfileUI2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              child: Column(
                children: [
                  ListTile(
                    trailing: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                    leading: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                    ),
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundImage:
                      AssetImage("assets/iconss/girl-face rainbow1280.jpg"),
                      radius: 100,
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90, top: 60),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset("assets/SVG/fb.svg")
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.chat,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.email,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                          Icon(
                            Icons.monochrome_photos,
                            color: Colors.lightBlue,
                            size: 40,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ListTile(
                      title: Center(
                          child: Text(
                            "Chromicle",
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          )),
                      subtitle: Center(
                          child: Text(
                            "@amFOSS",
                            style: TextStyle(fontSize: 15),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Text(
                      "Mobile App Developer and Open Source enthusiastic",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 250,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: Colors.grey),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Privacy",
                            prefixIcon: Icon(
                              Icons.privacy_tip,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 250,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: Colors.grey),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Purchase History",
                            prefixIcon: Icon(
                              Icons.history,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 250,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: Colors.grey),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Help & Support",
                            prefixIcon: Icon(
                              Icons.help,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 250,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: Colors.grey),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "settings",
                            prefixIcon: Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 250,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(400),
                            color: Colors.grey),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Invite Friend",
                            prefixIcon: Icon(
                              Icons.insert_invitation,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(Icons.arrow_forward_ios_rounded),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
