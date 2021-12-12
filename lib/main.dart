import 'package:flutter/material.dart';
import 'package:lunch_tomorrow/pages/index/index.dart';
import 'package:lunch_tomorrow/pages/collect/collect.dart';
import 'package:lunch_tomorrow/pages/choose/choose.dart';
import 'package:lunch_tomorrow/pages/about/about.dart';

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
        'choose': (context) => ChoosePage(),
        'about': (context) => AboutPage(),
      },
    );
  }
}
