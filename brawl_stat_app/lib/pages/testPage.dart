import 'package:flutter/material.dart';



class TestPage extends StatefulWidget {
  const TestPage({super.key, required this.title,required this.color});

  final String title;
  final Color color;

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(widget.title),
      ),
    );
  }
}