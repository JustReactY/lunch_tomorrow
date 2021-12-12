import 'package:flutter/material.dart';
import 'package:lunch_tomorrow/components/themeRowCard.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({Key? key}) : super(key: key);

  @override
  _ChoosePageState createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  @override
  Widget build(BuildContext context) {
    List viewData = [
      {
        "title": "辣椒炒肉",
        "species": "荤菜",
        "headImg": "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"
      },
      {
        "title": "杏鲍菇",
        "species": "素材",
        "headImg": "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"
      },
      {
        "title": "鸡蛋 ",
        "species": "主食",
        "headImg": "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('那就选一下吧'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: viewData.length,
            // itemExtent: 50.0, //强制高度为50.0
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  decoration: BoxDecoration(
                    border: Border(
                      // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
                      bottom: BorderSide(width: 20.0, color: Colors.white),
                    ),
                    // color: Colors.white,
                  ),
                  child: ThemeRowCard(
                      title: viewData[index]['title'],
                      species: viewData[index]['species']));
            }),
      ),
    );
  }
}
