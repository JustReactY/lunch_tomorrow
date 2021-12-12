import 'package:flutter/material.dart';
import 'package:lunch_tomorrow/components/themeCard.dart';

class CollectPage extends StatefulWidget {
  const CollectPage({Key? key}) : super(key: key);

  @override
  _CollectPageState createState() => _CollectPageState();
}

class _CollectPageState extends State<CollectPage> {
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
        title: Text('我的收藏'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: GridView.builder(
            itemCount: viewData.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return ThemeCard(
                title: viewData[index]['title'],
              );
            }),
      ),
    );
  }
}
