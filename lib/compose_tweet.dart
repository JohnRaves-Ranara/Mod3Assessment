import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dashboard_screen.dart';

String str_tweet = "";

class compose_tweet extends StatefulWidget {
  const compose_tweet({Key? key}) : super(key: key);

  @override
  _compose_tweetState createState() => _compose_tweetState();
}

class _compose_tweetState extends State<compose_tweet> {
  TextEditingController tweet = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
          controller: tweet
        ),
        ElevatedButton(child: 
        Text("click"),
        onPressed: (){
          setState(() {
            str_tweet = tweet.text;
            print(str_tweet);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>dashboard_screen()));
          });
        },
        
        )
      ],)
    );
  }
}
