import 'package:flutter/material.dart';

class LineComponent extends StatelessWidget {
  const LineComponent({Key? key, required this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          // top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
          bottom:
              BorderSide(width: 1.0, color: Color.fromRGBO(38, 38, 38, 0.4)),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            Text(
              'chevron_right',
              style: TextStyle(
                fontFamily: "MaterialIcons",
                fontSize: 24.0,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
