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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "DATA TABLE",
          ),
          centerTitle: true,
        ),
        body:
        Container(
          child: DataTable(columns: [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Role")),
            DataColumn(label: Text("Salary")),
          ], rows: [
            DataRow(cells: [
              DataCell(Text("Amith")),
              DataCell(Text("21")),
              DataCell(Text("Employe")),
              DataCell(Text("7LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("AKSHAY")),
              DataCell(Text("24")),
              DataCell(Text("Employe")),
              DataCell(Text("8LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Abinav")),
              DataCell(Text("21")),
              DataCell(Text("Employe")),
              DataCell(Text("7LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Rahal")),
              DataCell(Text("28")),
              DataCell(Text("Employe")),
              DataCell(Text("6LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Adrash")),
              DataCell(Text("25")),
              DataCell(Text("Employe")),
              DataCell(Text("5LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Amal")),
              DataCell(Text("24")),
              DataCell(Text("Employe")),
              DataCell(Text("6LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Najath")),
              DataCell(Text("23")),
              DataCell(Text("Employe")),
              DataCell(Text("8LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Tasli")),
              DataCell(Text("25")),
              DataCell(Text("Employe")),
              DataCell(Text("8LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Madhu")),
              DataCell(Text("21")),
              DataCell(Text("Employe")),
              DataCell(Text("8LPA")),
            ]),DataRow(cells: [
              DataCell(Text("Amith")),
              DataCell(Text("21")),
              DataCell(Text("Employe")),
              DataCell(Text("7LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("AKSHAY")),
              DataCell(Text("24")),
              DataCell(Text("Employe")),
              DataCell(Text("8LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Abinav")),
              DataCell(Text("21")),
              DataCell(Text("Employe")),
              DataCell(Text("7LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Rahal")),
              DataCell(Text("28")),
              DataCell(Text("Employe")),
              DataCell(Text("6LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Adrash")),
              DataCell(Text("25")),
              DataCell(Text("Employe")),
              DataCell(Text("5LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Amal")),
              DataCell(Text("24")),
              DataCell(Text("Employe")),
              DataCell(Text("6LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Najath")),
              DataCell(Text("23")),
              DataCell(Text("Employe")),
              DataCell(Text("8LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Tasli")),
              DataCell(Text("25")),
              DataCell(Text("Employe")),
              DataCell(Text("8LPA")),
            ]),
            DataRow(cells: [
              DataCell(Text("Madhu")),
              DataCell(Text("21")),
              DataCell(Text("Employe")),
              DataCell(Text("8LPA")),
            ]),

          ]),
        ));
  }
}
