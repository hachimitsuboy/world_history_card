import 'package:flutter/material.dart';
class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ใในใ"),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}