import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Shared pre HOME 2 .dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Loginpage1(),
    );
  }));
}

class Loginpage1 extends StatefulWidget {
  @override
  State<Loginpage1> createState() => _Loginpage1State();
}

class _Loginpage1State extends State<Loginpage1> {
  late SharedPreferences data;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  late bool newuser;

  @override
  void initState() {
    checkUser();//create a function and add feature
    super.initState();
  }

  void checkUser() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool("newuser") ?? true);

    if (newuser == false) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Home()));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Shared prefernce",
          style: TextStyle(
              fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                controller: username,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                controller: password,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.orange),
              onPressed: () {
                String uname = username.text;
                String pwd = password.text;

                if(uname != '' && pwd != '') {
                //  print("Login Success");
                  data.setString("username", uname);
                  data.setBool("newuser", false);
                //  print(uname);

                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }
              },
              child: Text("Login")
            ),
          ],
        ),
      ),
    );
  }
}
