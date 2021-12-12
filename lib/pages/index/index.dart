import 'package:flutter/material.dart';
import './components/drawer.dart';
import './components/home.dart';
import 'package:lunch_tomorrow/pages/myself/myself.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  int _selectedIndex = 1;
  String _pageShow = 'home';
  String _title = '首页';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text(_title),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
      ),
      body: _buildWidgetBody(),
      // drawer: MyDrawer(), //抽屉
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: _onHome),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.person), onPressed: _onSelf),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: Icon(Icons.add),
          onPressed: _onAdd),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildWidgetBody() {
    if (_pageShow == 'home') {
      return HomePage();
    } else if (_pageShow == 'self') {
      return MySelfPage();
    }
    return Container(
      child: Text('none'),
    );
  }

  void _onAdd() {
    Navigator.of(context).pushNamed('choose');
  }

  void _onHome() {
    setState(() {
      _pageShow = 'home';
      _title = '首页';
    });
  }

  void _onSelf() {
    setState(() {
      _pageShow = 'self';
      _title = '我的';
    });
  }
}
