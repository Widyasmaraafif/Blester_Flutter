import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyTaskBox extends StatefulWidget {
  final String task; // Tambahkan task sebagai parameter

  const MyTaskBox({Key? key, required this.task})
      : super(key: key); // Tambahkan required task

  @override
  _MyTaskBoxState createState() => _MyTaskBoxState();
}

class _MyTaskBoxState extends State<MyTaskBox> {
  bool isChecked = false; // Status awal checkbox

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: MySizes.defaultSpace,
        vertical: MySizes.sm/2
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.symmetric(
              horizontal: BorderSide(color: Colors.black.withOpacity(0.1)))),
      child: Row(
        children: [
          Checkbox(
            visualDensity:
                VisualDensity.compact, // Mengurangi padding internal
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: isChecked,
            onChanged: (bool? newValue) {
              setState(() {
                isChecked = newValue ?? false;
              });
            },
          ),
          Text(widget
              .task) // Gunakan widget.task untuk mengakses data dari StatefulWidget
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text("My Task List")),
      body: Column(
        children: [
          MyTaskBox(task: "Belajar Flutter"),
          MyTaskBox(task: "Mengerjakan proyek"),
          MyTaskBox(task: "Olahraga pagi"),
        ],
      ),
    ),
  ));
}
