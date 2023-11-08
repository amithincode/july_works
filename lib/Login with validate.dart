import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Listview.dart';

void main() {
  runApp(DevicePreview(
      builder: (BuildContext context) => MaterialApp(useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,

        home: Login_validate(),
      )));
}

class Login_validate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Login_validate_state();
}

class Login_validate_state extends State<Login_validate> {
  @override
  GlobalKey<FormState> formkey=GlobalKey();
  bool showpass=true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page",style: TextStyle(fontSize: 30),),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/iconss/greenperson1.jpg"),
                height: 200,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "username",
                      prefixIcon: Icon(Icons.person),
                      labelText: "username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator:(uname) {
                    if(uname!.isEmpty || !uname.contains('@') ||!uname.contains('.')) {
                      return 'Enter valid username';
                    }
                    else{
                      return null;
                    }
                  },

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 50),
                child: TextFormField(
                  obscureText:showpass ,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(Icons.person),
                      suffixIcon: IconButton(onPressed: () {
                        setState(() {
                          if(showpass){
                            showpass=false;
                          }
                          else{
                            showpass=true;
                          }

                        });
                      }, icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility),),
                      labelText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                  validator:(password) {
                    if(password!.isEmpty || password.length<6){
                      return "Enter a valid password";
                    }
                    else
                      return null;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {
                final valid =formkey.currentState!.validate();
                if(valid){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
                }
              }, child: Text("Login")),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: () {}, child: Text("create a new Account"))
            ],
          ),
        ),
      ),
    );
  }
}