// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(DevicePreview(builder: (context) {
//     return MaterialApp(
//       useInheritedMediaQuery: true,
//       debugShowCheckedModeBanner: false,
//       home: EGG1(),
//     );
//   }));
// }
//
// class EGG1 extends StatelessWidget {
//   Widget Newbutton({
//
//      Color?buttoncolor, //Add parameter for the button color
//     String?buttonText,
//     required void Function () buttonAction11,
//
//      }) {
//     return ElevatedButton(
//       onPressed: buttonAction11,
//
//       style: ElevatedButton.styleFrom(primary: buttoncolor ),//assign color to the variable
//       child: Text(buttonText!
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("mallu developer"),
//       ),
//       body: ListView(
//         children: [
//           ElevatedButton(
//             onPressed: () {
//               print("haii succesed");
//             },
//             child: Text("haiii"),
//            // style: ElevatedButton.styleFrom(primary: Colors.orange),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               print("haii succesed");
//             },
//             child: Text("haiii"),
//
//           ),
//           Newbutton(buttoncolor: Colors.yellow,
//           buttonAction11: (){
//             print("hggcvhvgbvnbvbvbnbvvghcguvhjb");
//           }
//           )
//
//
//      ],
//       ),
//     );
//   }
// }
// //we can change the variable dynamic through , giving parameters
// //add value with the same name has the class( (class) color: =  name the parameter has color)
// //also add name of parameter to the class eg:(
// //      Newbutton({
// //      Color?buttoncolor, //Add parameter for the button color
// //      })
// // change to the parameter name colors.orange to the variable name "  )
