import 'package:flutter/material.dart';
import 'package:mod3assessment/dashboard_screen.dart';
import 'dashboard_screen.dart';

class dummy extends StatefulWidget {
  const dummy({ Key? key }) : super(key: key);

  @override
  _dummyState createState() => _dummyState();
}

class _dummyState extends State<dummy> {
  String dummytxt = "";
  TextEditingController set = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              
              Navigator.push(context, MaterialPageRoute(builder: (context)=>dashboard_screen()));
            },
            child: Text("hello"),
          ),
        ],
      ),
    );
  }
}