import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:july_flutter_dart/SQFLite%20Files/Login%20Interface/SQF%20LI.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Home3.dart';
import 'Admin3.dart';
import 'Register page.dart';

class Loginpage3 extends StatefulWidget {
  @override
  State<Loginpage3> createState() => _Loginpage3State();
}

class _Loginpage3State extends State<Loginpage3> {

  var formkey = GlobalKey<FormState>();
  final TextEditingController username_controller = TextEditingController();
  final TextEditingController password_controller = TextEditingController();


  void Loginchecking(String email, String password) async {
    //call last on buttonuu
    //creating admin password
    if (email == 'admin@gmail.com' && password == '123456') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Adminpage4()));
    } else {
      var data = await SQLHelper1.CheckLogin(email, password);
      if (data.isNotEmpty) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Home3(data1: data)));
        print('Login success');
      } else if (data.isNotEmpty) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Loginpage3()));
        print("login failed");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool hidepass = true;
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SingleChildScrollView(
            child: Form(
          key: formkey,
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: Colors.cyanAccent, width: 2.5)),
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("assets/iconss/img_21.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text("Demoapp",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyanAccent)),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  validator: (text) {
                    if (text!.isEmpty ||
                        !text.contains('@') ||
                        !text.contains('.com')) {
                      return " Enter valid Email Address !!!";
                    }
                  },
                  controller: username_controller,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: " Enter your email id",
                    hintStyle: TextStyle(color: Colors.cyanAccent),
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.cyanAccent),
                    suffixIcon: Icon(Icons.email),
                    suffixIconColor: Colors.cyanAccent,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent)),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  validator: (pass) {
                    if (pass!.isEmpty || pass.length < 6) {
                      return "Password length should be greater than 6 ";
                    }
                  },
                  textInputAction: TextInputAction.next,
                  obscuringCharacter: "*",
                  obscureText: hidepass,
                  // use @sufixicon,make sure call for a bool
                  controller: password_controller,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(color: Colors.cyanAccent),
                    fillColor: Colors.cyanAccent,
                    labelText: "password",
                    labelStyle: TextStyle(color: Colors.cyanAccent),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (hidepass)
                              hidepass = false;
                            else
                              hidepass = true;
                          });
                        },
                        icon: Icon(hidepass
                            ? Icons.visibility
                            : Icons.visibility_off)),
                    suffixIconColor: Colors.cyanAccent,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.cyanAccent)),
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    final valid = formkey.currentState!.validate();
                    if (valid) {
                      Loginchecking(
                          username_controller.text, password_controller.text);
                    } else {}
                  }, child: Text("Login")),
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register3()));
                  },
                  child: Text(
                    "Create a new Account ?",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ))
            ],
          ),
        )));
  }
}
