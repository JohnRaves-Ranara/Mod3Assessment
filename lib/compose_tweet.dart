import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mod3assessment/dashboard_screen.dart';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState() {
            str_tweet = tweet.text;
          }
        },
        backgroundColor: Color(0xFF1F87D2),
      ),
      appBar: AppBar(
        title: Text(
          "Compose tweet",
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1C1E31),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: tweet,
                decoration: InputDecoration(
                  hintText: "What's happening?",
                ),
                scrollPadding: EdgeInsets.all(20.0),
                keyboardType: TextInputType.multiline,
                maxLines: 99999,
                autofocus: true,
              )
            ],
          ),
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
