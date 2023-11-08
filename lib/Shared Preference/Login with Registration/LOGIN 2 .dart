import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HOME 3 .dart';
import 'REGISTRATION 1 .dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Loginpage2(),
    );
  }));
}

class Loginpage2 extends StatefulWidget {
  @override
  State<Loginpage2> createState() => _Loginpage2State();
}

class _Loginpage2State extends State<Loginpage2> {
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;
  late String uname;
  late String pass;
  late String email;

  @override
  void initState() {
    check_if_already_login();
    getvalue();
    super.initState();
  }

  void getvalue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata.getString('email')!;
      uname = logindata.getString('username')!;
      pass = logindata.getString('password')!;
    });
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = logindata.getBool('newuser') ?? true;

    if (newuser == false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Homepage2()));
    }
  }

  @override
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "L O G I N",
            style: TextStyle(
                fontSize: 23,
                color: Colors.black,
                fontFamily: "Font collection",
                fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200, left: 20, right: 20),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Username",
                        prefixIcon: Icon(Icons.account_circle_rounded),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    controller: username_controller,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: TextField(
                    textInputAction: TextInputAction.continueAction,
                    decoration: InputDecoration(
                        hintText: "password",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    controller: password_controller,
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                    onPressed: () {
                      String username = username_controller.text;
                      String password = password_controller.text;

                      if (username != "" &&
                          password != "" &&
                          username == uname &&
                          password == pass) print("successfuly");

                      logindata.setBool("login", false);

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage2()));
                    },
                    child: Text("LOGIN")),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registration2(),
                          ));
                    },
                    child: Text("Not a user..! Create a new Account"))
              ],
            ),
          ),
        ));
  }
}
