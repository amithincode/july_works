import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:july_flutter_dart/SQFLite%20Files/Login%20Interface/Login%20page.dart';
import 'package:july_flutter_dart/SQFLite%20Files/Login%20Interface/Register%20page.dart';


class Splashscreen3 extends StatefulWidget {
  @override
  State<Splashscreen3> createState() => _Splashscreen3State();
}

class _Splashscreen3State extends State<Splashscreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: const EdgeInsets.only(top: 00),
        child: Column(
          children: [
            SizedBox(height: 100),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.cyanAccent,
                    width: 2.5
                  )
                ),
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/iconss/img_21.png"),
                ),
              ),
            ),

            SizedBox(height: 30),
            Text("Demoapp",style: TextStyle(fontFamily: "F1",fontWeight: FontWeight.bold,fontSize: 35,color: Colors.cyanAccent),),
            SizedBox(height: 180),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginpage3()));
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register3()));
                },
                child: Text(
                  " New user? Signup",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
