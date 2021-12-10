import 'package:flutter/material.dart';
import './components/line.dart';

class MySelfPage extends StatefulWidget {
  const MySelfPage({Key? key}) : super(key: key);

  @override
  _MySelfPageState createState() => _MySelfPageState();
}

class _MySelfPageState extends State<MySelfPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LineComponent(title: '我的收藏'),
        LineComponent(title: '我的点赞'),
      ],
    );
  }

  void _onPressed() {}
}
