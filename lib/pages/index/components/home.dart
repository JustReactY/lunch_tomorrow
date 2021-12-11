import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> viewData = [
      {"title": "辣椒炒肉"}
    ];

    List<Widget> doms = viewData.map((item) => Text(item['title'])).toList();
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 48.0, bottom: 48.0),
                child: Text(
                  '明天吃什么',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            child: Text("马上去选"),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  void _onPressed() {}
}
