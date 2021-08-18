import 'package:flutter/material.dart';
import 'package:world_history_card/db/database.dart';
import 'package:world_history_card/main.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  String _title = "仮タイトル";
  String _event = "";
  String _year = "";

  // TextEditingController _questionController = TextEditingController();
  // TextEditingController _answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _addHistory,
            icon: Icon(Icons.list),
            tooltip: "歴史の登録を行います",
          )
        ],
      ),
      body: Column(
        children: [
          Text(
            "歴史事象",
            style: TextStyle(fontSize: 32.0),
          ),
          _insertQuestion(),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "年号",
            style: TextStyle(fontSize: 32.0),
          ),
          SizedBox(
            height: 12.0,
          ),
          _insertAnswer(),
          Text(_event),
          Text(_year),
        ],
      ),
    );
  }

  //TODO 問題入力パート
  Widget _insertQuestion() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        maxLines: 1,
        keyboardType: TextInputType.name,
        onChanged: (strQuestion) => _setQuestion,
        textAlign: TextAlign.center,
        decoration: InputDecoration(hintText: "歴史事象を入力してください"),
      ),
    );
  }

  //TODO 解答入力パート
  Widget _insertAnswer() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: TextField(
        maxLines: 1,
        keyboardType: TextInputType.datetime,
        textAlign: TextAlign.center,
        onChanged: (strAnswer) => _setAnswer,
        decoration: InputDecoration(hintText: "その事象が起きた年を入力してください"),
      ),
    );
  }

  _setQuestion(String strQuestion) {
    setState(() {
      _event = strQuestion;
    });
  }

  _setAnswer(String strAnswer) {
    setState(() {
      _year = strAnswer;
    });
  }

  _addHistory() async{
    await database.addHistory(WorldHistorie(event: _event, year: _year));
  }
}
