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
    List<Map<String, dynamic>> list = [
      {"title": "我的收藏", "onPressed": _onPressed, "path": 'collect'},
      {"title": "关于", "onPressed": _onPressed, "path": 'about'},
    ];

    List<Widget> doms = list
        .map((item) => LineComponent(
            title: item['title'],
            path: item['path'],
            onPressed: item['onPressed']))
        .toList();
    return ListView(
      children: doms,
    );
  }

  void _onPressed() {
    print('object');
  }
}
