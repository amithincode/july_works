import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LOGIN 2 .dart';

class Homepage2 extends StatefulWidget {
  @override
  State<Homepage2> createState() => _Homepage2State();
}

class _Homepage2State extends State<Homepage2> {
  late SharedPreferences logindata;
  late String email;

  @override
  void initState() {
    initial();
    super.initState();
  }

  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata.getString("email")!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Homepage"),backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(child: Text("welcome $email ,Start your browsing",style: TextStyle(fontSize: 25),)),
          SizedBox(height: 50),
          ElevatedButton(
              onPressed: () {
                logindata.setBool("newuser", true);
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Loginpage2(),
                    ));
              },
              child: Text("Log Out"))
        ],
      ),
    );
  }
}
