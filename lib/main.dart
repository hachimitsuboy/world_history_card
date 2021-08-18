import 'package:flutter/material.dart';
import 'package:world_history_card/db/database.dart';
import 'package:world_history_card/screen/home_screen.dart';

late MyDatabase database;
void main() {

  runApp(MyApp());
  database = MyDatabase();
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "世界史カード",
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
