import 'package:flutter/material.dart';

class ThemeRowCard extends StatefulWidget {
  const ThemeRowCard({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  _ThemeRowCardState createState() => _ThemeRowCardState();
}

class _ThemeRowCardState extends State<ThemeRowCard> {
  @override
  bool _switchSelected = false;
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.network(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                width: 100.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.title),
                    Text(widget.title),
                    Text(widget.title)
                  ],
                ),
              ),
            ],
          ),
          StatefulBuilder(builder:
              (BuildContext context, void Function(void Function()) setState) {
            return Checkbox(
              value: _switchSelected, //当前状态
              onChanged: (value) {
                setState(() {
                  _switchSelected = !_switchSelected;
                });
                //重新构建页面
              },
            );
          }),
        ],
      ),
    );
  }
}
