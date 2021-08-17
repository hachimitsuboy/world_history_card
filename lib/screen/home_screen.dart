import 'package:flutter/material.dart';
import 'package:world_history_card/parts/expand_button.dart';
import 'package:world_history_card/screen/test_screen.dart';
import 'package:world_history_card/screen/word_list_screen.dart';

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
        body: Column(
          children: [
            _titleText(),
            Image.asset("assets/images/title.png"),
            _testButton(),
            SizedBox(height: 12.0,),
            _wordListButton(),
          ],
        ),
      ),
    );
  }

  Widget _titleText() {
    return Center(
      child: Column(
        children: [
          Text(
            "世界史カード！",
            style: TextStyle(fontSize: 35.0),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text("世界史の事象と、その事象が起きた年を暗記しよう！"),
        ],
      ),
    );
  }

  Widget _testButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: ExtendedButton(
          onPressed: () => _toStartTest(), label: "テスト開始", color: Colors.teal),
    );
  }


  Widget _wordListButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: ExtendedButton(
          onPressed: () => _toWordList(),
          label: "世界史カード一覧",
          color: Colors.deepPurpleAccent),
    );
  }

  _toStartTest() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TestScreen()));
  }

  _toWordList() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => WordListScreen()));
  }
}
