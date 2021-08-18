import 'package:flutter/material.dart';
import 'package:world_history_card/screen/edit_screen.dart';

class WordListScreen extends StatefulWidget {
  const WordListScreen({Key? key}) : super(key: key);

  @override
  _WordListScreenState createState() => _WordListScreenState();
}

class _WordListScreenState extends State<WordListScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope( //WillPopScopeではonWillPopで
      // 画面が閉じられた時の処理を登録できる
      onWillPop: () => _backToWrdList(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("世界史カード"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _toEditScreen(),
          child: Icon(Icons.add),
          tooltip: "世界史カードを追加します",
        ),
        body: Column(
          children: [
            //TODO カードの作成
          ],
        ),
      ),
    );
  }

  _toEditScreen() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => EditScreen()));
  }

  Future<bool>_backToWrdList() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WordListScreen()));
    return Future.value(false);
  }
}
