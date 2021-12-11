import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        //移除抽屉菜单顶部默认留白
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "images/ic_launcher.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "选一选吧",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(child: _buildFloor()),
          ],
        ),
      ),
    );
  }

  Widget _buildFloor() {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: const Icon(Icons.grade),
          title: const Text('收藏'),
        ),
        ListTile(
          leading: const Icon(Icons.touch_app),
          title: const Text('点赞'),
        ),
      ],
    );
  }
}
