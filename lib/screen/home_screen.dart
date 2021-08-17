import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => print("押されたよ"), //TODO FloatingActionButtonが押されたとき
        ),
        body: Column(
          children: [
            _titleText(),
          ],
        ),
      ),
    );
  }


  Widget _titleText() {
    return Center(
      child: Column(
        children: [
          Text("世界史カード！", style: TextStyle(fontSize: 35.0),),
          SizedBox(height: 10.0,),
          Text("世界史の事象と、その事象が起きた年を暗記しよう！"),
        ],
      ),
    );
  }
}
