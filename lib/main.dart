import 'package:flutter/material.dart';
import 'package:musick/pages/list_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //root of my app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: ListPage(),
    );
  }
}
