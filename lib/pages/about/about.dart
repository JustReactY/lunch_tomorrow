import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('关于'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              '关于我们',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '      明天吃什么是一款专门为解决明天吃什么发愁星人准备的点餐系统。',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
