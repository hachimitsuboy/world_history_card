import 'package:flutter/material.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  String _title = "仮タイトル";
  String _strQuestion = "";
  String _strAnswer = "";

  // TextEditingController _questionController = TextEditingController();
  // TextEditingController _answerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("歴史事象", style: TextStyle(fontSize: 32.0),),
          _insertQuestion(),
          SizedBox(height: 12.0,),
          Text("年号", style: TextStyle(fontSize: 32.0),),
          SizedBox(height: 12.0,),
          _insertAnswer(),
          Text(_strQuestion),
          Text(_strAnswer),
        ],
      ),
    );
  }

  //TODO 問題入力パート
  Widget _insertQuestion() {
    return TextField(
      maxLines: 1,
      keyboardType: TextInputType.name,
      onChanged: (strQuestion) => _setQuestion,
      textAlign: TextAlign.center,
    );
  }

  //TODO 解答入力パート
  Widget _insertAnswer() {
    return TextField(
      maxLines: 1,
      keyboardType: TextInputType.datetime,
      textAlign: TextAlign.center,
      onChanged: (strAnswer) => _setAnswer,
    );
  }

  _setQuestion(String strQuestion) {
    setState(() {
      _strQuestion = strQuestion;
    });
  }

  _setAnswer(String strAnswer) {
    setState(() {
      _strAnswer = strAnswer;
    });
  }
}
