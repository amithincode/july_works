import 'package:flutter/material.dart';
import 'package:july_flutter_dart/SQFLite%20Files/LOGIN%20INTERFACE%202/sql.dart';
void main(){
  runApp(MaterialApp(
    useInheritedMediaQuery: true,
    debugShowCheckedModeBanner: false,
  ));
}
class AdminHome extends StatefulWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  var data ;

  void delet(int id) async {
    await SQLHelper2.Deleteuser(id);
    Refresh();
  }

  @override
  void initState() {
    Refresh();
    super.initState();
  }

  void Refresh() async {
    var mydata = await SQLHelper2.getAll();
    setState(() {
      data = mydata;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel'),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int index) {
            return Card(
              color: Colors.deepPurple[200],
              child: ListTile(
                title: Text('${data[index]['name']}'),
                trailing: IconButton(
                  onPressed: () {
                    delet(data[index]['id']);
                  },
                  icon: Icon(Icons.delete),
                ),
              ),
            );
          }),
    );
  }
}
