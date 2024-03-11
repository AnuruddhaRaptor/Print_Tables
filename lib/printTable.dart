import 'package:flutter/material.dart';

class PrintTable extends StatefulWidget {
  const PrintTable({super.key});

  @override
  State<PrintTable> createState() => _PrintTable();
}

class _PrintTable extends State<PrintTable> {
  int? _count = 0;

  void _printTableValue() {
    setState(() {
      _count = _count! + 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: const Text("Table of 2"),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Clicked button to print the table values",
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "$_count",
              ),
              ElevatedButton(
                onPressed: _printTableValue,
                child: const Text("Print"),
              )
            ],
          ),
        ));
  }
}
