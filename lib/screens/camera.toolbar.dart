import 'package:flutter/material.dart';

class Toolbar extends StatefulWidget {
  @override
  _ToolbarState createState() => _ToolbarState();
}

class _ToolbarState extends State<Toolbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: MediaQuery.of(context).size.width,
      height: 56.0,
      child: Center(
        child: Text(
          "App Title",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}
