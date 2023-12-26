import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:july_flutter_dart/SQFLite%20Files/Login%20Interface/Login%20page.dart';

import 'Home3.dart';
import 'SQF LI.dart';

class Adminpage4 extends StatefulWidget {
  const Adminpage4({Key? key}) : super(key: key);

  @override
  State<Adminpage4> createState() => _Adminpage4State();
}

class _Adminpage4State extends State<Adminpage4> {
  var data1;

  void dlt(int id) async {
    await SQLHelper1.Deleteuser(id);
    Refresh();
  }

  @override
  void initState() {
    Refresh();
    super.initState();
  }

  void Refresh() async {
    var mydata = await SQLHelper1.getAll();
    setState(() {
      data1 = mydata;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(130),
              child: AppBar(
                backgroundColor: Colors.black,
                title: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/iconss/img_21.png"),
                      radius: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Demo app",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.cyanAccent,
                              fontSize: 24)),
                    )
                  ],
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Loginpage3()));
                    }, icon: Icon(Icons.logout))
                  )
                ],
                bottom: const TabBar(
                  tabs: [
                    Tab(child: Text("Login")),
                    Tab(child: Text("Reels")),
                    Tab(child: Text("Story"))
                  ],
                  labelColor: Colors.cyanAccent,
                  labelStyle:
                      TextStyle(fontSize: 14.5, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: ListView.builder(
                itemCount: data1.length,
                itemBuilder: (context, int index) {
                  return Card(
                    color: Colors.lightBlue[200],
                    child: ListTile(
                      title: Text('${data1[index]['name']}',style: TextStyle(color: Colors.black87),),
                      trailing: IconButton(
                          onPressed: () {
                            dlt(data1[index]['id']);
                          },
                          icon: Icon(Icons.delete)),
                    ),
                  );
                })));
  }
}
