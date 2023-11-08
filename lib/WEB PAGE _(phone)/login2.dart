import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new2.dart';
import 'new3.dart';


void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(
        home: login(),
        routes: {
          "anotherpage": (context) => phones(),
          "thirdpage": (context) => phoneshow()
        },
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
      )));
}

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LoginPage"),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      side: BorderSide(width: 1.5)),
                  onPressed: () {
                    Navigator.of(context).pushNamed("anotherpage");
                  },
                  child: Text("Login"))
            ],
          ),
        ));
  }
}