import 'package:flutter/material.dart';
import 'package:lunch_tomorrow/components/themeCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

    _mySliverChildBuilderDelegate() {
      return SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ThemeCard(title: viewData[index]['title']);
        },
        childCount: viewData.length,
      );
    }

    _mySliverGridDelegateWithFixedCrossAxisCount() {
      return SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
        // childAspectRatio: 1.5,
      );
    }

    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: EdgeInsets.only(top: 48.0, bottom: 48.0),
            sliver: SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              Text(
                '明天吃什么',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.blue,
                ),
              ),
            ])),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 23, right: 30, bottom: 20),
            sliver: SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              ElevatedButton(
                child: Text("马上去选"),
                onPressed: () {
                  Navigator.of(context).pushNamed('choose');
                },
              ),
            ])),
          ),
          SliverGrid(
            delegate: _mySliverChildBuilderDelegate(),
            gridDelegate: _mySliverGridDelegateWithFixedCrossAxisCount(),
          ),
        ],
      ),
    );
  }

  void _onPressed() {}
}
