import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';


void main() {
  runApp(DevicePreview(builder: (context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: MyRiveAnimation(),
    );
  }));
}
class MyRiveAnimation extends StatefulWidget {
  @override
  State<MyRiveAnimation> createState() => _MyRiveAnimationState();
}

class _MyRiveAnimationState extends State<MyRiveAnimation> {
  bool _isFirstWidget = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Switcher"),),
      body:Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedSwitcher(
                  duration: Duration(seconds: 5),
                  child: _isFirstWidget
                      ? Container(
                    key: UniqueKey(),
                    height: 200,
                    width: 200,
                    color: Colors.blue,
                  )
                      : Container(
                    key: UniqueKey(),
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isFirstWidget = !_isFirstWidget;
                    });
                  },
                  child: Text('Change'),
                ),
              ],
            ),
          )
      ) ,
    );
  }
}
