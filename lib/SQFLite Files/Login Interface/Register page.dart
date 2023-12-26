import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:july_flutter_dart/SQFLite%20Files/Login%20Interface/Splash%20screen.dart';
import 'Login page.dart';
import 'SQF LI.dart';

class Register3 extends StatefulWidget {
  @override
  State<Register3> createState() => _Register3State();
}

class _Register3State extends State<Register3> {
  var formkey1 = GlobalKey<FormState>();
  var username2_controller = TextEditingController();
  var password2_controller = TextEditingController();
  var email_controller = TextEditingController();
  var password3_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void AddNewUser123(String name, String email, String password) async {
      var id = await SQLHelper1.AddNewUser(name, email, password);
      if (id != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Loginpage3()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Splashscreen3()));
      }
    }

    return Scaffold(
        backgroundColor: Colors.black87,
        body: SingleChildScrollView(
          child: Form(
            key: formkey1,
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80),
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
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: username2_controller,
                    validator: (name) {
                      if (name!.isEmpty) {
                        return "Add your name";
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyanAccent),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyanAccent)),
                        hintText: "Full name",
                        hintStyle: TextStyle(color: Colors.cyanAccent),
                        labelText: "What's your name ?",
                        labelStyle: TextStyle(color: Colors.cyanAccent),
                        suffixIcon: Icon(Icons.person),
                        suffixIconColor: Colors.cyanAccent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    validator: (email1) {
                      if (email1!.isEmpty &&
                          !email1.contains("@") &&
                          !email1.contains(".")) {
                        return "Enter your Email id";
                      } else
                        return null;
                    },
                    controller: email_controller,
                    decoration: InputDecoration(
                      hintText: "Enter your Email",
                      hintStyle: TextStyle(color: Colors.cyanAccent),
                      labelText: "Email Address",
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
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: password2_controller,
                    obscuringCharacter: '*',
                    obscureText: true,
                    validator: (pass) {
                      if (pass!.isEmpty || pass.length < 6) {
                        return "password must greater than 6";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "Create a password",
                      hintStyle: TextStyle(color: Colors.cyanAccent),
                      labelText: "password",
                      labelStyle: TextStyle(color: Colors.cyanAccent),
                      suffixIcon: Icon(Icons.password),
                      suffixIconColor: Colors.cyanAccent,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyanAccent)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    obscuringCharacter: '*',
                    obscureText: true,
                    controller: password3_controller,
                    validator: (pass) {
                      if (pass!.isEmpty || pass.length < 6) {
                        return "Password must should be greater than 6";
                      } else if (password2_controller.text !=
                          password3_controller.text) {
                        return "password not match";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Confirm your password",
                      hintStyle: TextStyle(color: Colors.cyanAccent),
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
                SizedBox(height: 20),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      final valid1 = formkey1.currentState!.validate();

                      if (valid1) {
                        String uname = email_controller.text;
                        String name = username2_controller.text;

                        var data = await SQLHelper1.userFound(name, uname);
                        if (data.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('User already exit')));
                        } else {
                          AddNewUser123(username2_controller.text,
                              email_controller.text, password2_controller.text);
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          action:
                              SnackBarAction(label: 'UNDO', onPressed: () {}),
                          content: const Text('Invalid username / password'),
                        ));
                      }
                    },
                    child: Text("Register")),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Loginpage3()));
                    },
                    child: Text(
                      "Already have an Account ?",
                      style: TextStyle(color: Colors.cyanAccent, fontSize: 18),
                    ))
              ],
            ),
          ),
        ));
  }
}
