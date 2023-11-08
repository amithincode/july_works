import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Shared pre LOGIN 1 .dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late SharedPreferences data;
  late String username;

  @override
  void initState() {
    fetchname();
    super.initState();
  }

  void fetchname() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString('username')!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chatbox"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Text("Hai Welcome $username",style: TextStyle(fontSize: 25),)),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Text(  "If we refresh the page the data never lose ! without clicking logout",
                style: TextStyle(fontSize: 20),
              ),
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  data.setBool('newuser', true);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage1()));
                }, child: Text("Logout")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
