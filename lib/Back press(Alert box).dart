import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Backpress(),
    );
  }));
}

class Backpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Exit?"),
            content: Text("Do you want to Exit"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Yes")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("No")),
            ],
          ));
    }

    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text("BackPress"),
          ),
          body: const Center(
            child: Text("Suiiiii"),
          ),
        ),
        onWillPop: showExitPopup);
  }
}