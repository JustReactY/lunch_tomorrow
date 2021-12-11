import 'package:flutter/material.dart';

class LineComponent extends StatelessWidget {
  const LineComponent(
      {Key? key,
      required this.title,
      required this.path,
      required this.onPressed})
      : super(key: key);

  final String title;
  final String path;
  final GestureTapCallback onPressed;

  Widget build(BuildContext context) {
    void JumpToPath() {
      this.onPressed();
      Navigator.of(context).pushNamed(this.path);
    }

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
        child: InkWell(
          onTap: JumpToPath,
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
      ),
    );
  }
}
