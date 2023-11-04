import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      home: Loginpage(),
    );
  }));
}

class Loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Loginpage> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FACEBOOK"),

      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 58,
              ),
              Text(
                "LOGIN PAGE",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "User Name",
                      prefixIcon: Icon(Icons.person),
                      labelText: "username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: Icon(Icons.visibility_off),
                      labelText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 155,
                width: 162,
              ),
              ElevatedButton(onPressed: () {}, child: Text("LOGIN")),
              TextButton(
                  onPressed: () {},
                  child: Text("Not a user ? Create a new account")),
            ],
          ),
        ),
      ),
    );
  }
}
