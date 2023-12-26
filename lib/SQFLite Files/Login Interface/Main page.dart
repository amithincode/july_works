import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:july_flutter_dart/SQFLite%20Files/Login%20Interface/Splash%20screen.dart';

void main(){
  runApp(MainApp());
}

class MainApp extends StatelessWidget{
  const MainApp({Key? key}) : super(key:key);
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     useInheritedMediaQuery: true,
     home: Splashscreen3(),
   );
  }
}
///  Admin id = admin@gmail.com
///  password = 123456