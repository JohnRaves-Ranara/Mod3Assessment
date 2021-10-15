import 'package:flutter/material.dart';

class dashboard_screen extends StatefulWidget {
  const dashboard_screen({ Key? key }) : super(key: key);

  @override
  _dashboard_screenState createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Hello world"),
        ],
      ),
    );
  }
}