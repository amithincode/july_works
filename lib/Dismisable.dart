import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: DATATABLE(),
    );
  }));
}

class DATATABLE extends StatelessWidget {
  var Datas = ["Data 1", "Data 2,", "Data 3", "Data 4"];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismisable"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Dismissible(background: Container(color: Colors.yellow,),
            key: ValueKey(Datas),
            child: ListTile(
              title: Center(child: Text(Datas[index])),
            ));
      },
      itemCount: Datas.length,),
    );
  }
}
//drag and delt the data