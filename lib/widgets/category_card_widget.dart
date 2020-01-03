import 'package:flutter/material.dart';

class Card_Widget extends StatefulWidget {
  @override
  _Card_WidgetState createState() => _Card_WidgetState();
}

class _Card_WidgetState extends State<Card_Widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20),
        child: Container(
            height: 225.0,
            width: 225.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.yellow,
            ),
            
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30.0,
                ),
                Stack(children: [
                  Container(
                    height: 150.0,
                    color: Colors.yellow[600],
                  ),
                ]),
                SizedBox(height: 20.0),
              ],
            )));
  }
}
