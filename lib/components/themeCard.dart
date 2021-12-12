import 'package:flutter/material.dart';

class ThemeCard extends StatefulWidget {
  const ThemeCard({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _ThemeCardState createState() => _ThemeCardState();
}

class _ThemeCardState extends State<ThemeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
            "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
            width: 170.0,
          ),
          Text(
            widget.title,
            style: TextStyle(fontSize: 14, color: Colors.black),
          )
        ],
      ),
    );
  }
}
