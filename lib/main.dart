import 'package:flutter/material.dart';
import 'package:lunch_tomorrow/pages/index/index.dart';
import 'package:lunch_tomorrow/pages/collect/collect.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '首页',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => ListPage(),
        'collect': (context) => CollectPage(),
      },
    );
  }
}
