import 'package:flutter/material.dart';

class WordListScreen extends StatefulWidget {
  const WordListScreen({Key? key}) : super(key: key);

  @override
  _WordListScreenState createState() => _WordListScreenState();
}

class _WordListScreenState extends State<WordListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("世界史カード"),
        centerTitle: true,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}

