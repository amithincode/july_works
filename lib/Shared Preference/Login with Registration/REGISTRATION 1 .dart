import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'LOGIN 2 .dart';

class Registration2 extends StatefulWidget {
  @override
  State<Registration2> createState() => _Registration2State();
}

class _Registration2State extends State<Registration2> {
  final email_controller = TextEditingController();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();
  late SharedPreferences logindata;

  @override
  void dispose() {
    email_controller.dispose();
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Registration page",
          style: TextStyle(
              fontSize: 23,
              color: Colors.black,
              fontFamily: "Font collection",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "email",
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                controller: email_controller,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "username",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                controller: username_controller,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                controller: password_controller,
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () async {
                  logindata = await SharedPreferences.getInstance();

                  String email = email_controller.text;
                  String username = username_controller.text;
                  String password = password_controller.text;

                  if (email != "" && username != '' && password != '') {
                    logindata.setString('email', email);
                    logindata.setString('username', username);
                    logindata.setString('password', password);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loginpage2()));
                  }
                },
                child: Text("Register")),
          ],
        ),
      ),
    );
  }
}
