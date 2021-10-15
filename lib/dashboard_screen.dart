import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'compose_tweet.dart';
import 'login_screen.dart';

class dashboard_screen extends StatefulWidget {
  const dashboard_screen({Key? key}) : super(key: key);

  @override
  _dashboard_screenState createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1E31),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => compose_tweet()));
        },
        child: Icon(Icons.navigation),
        foregroundColor: Colors.white,
        backgroundColor: Color(0xFF24A0F9),
      ),
      appBar: AppBar(
        shadowColor: Colors.grey[600],
        title: Text(
          "Weeter",
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1C1E31),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            "$str_tweet",
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontSize: 16, color: Colors.white)),
          ))
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF1C1E31),
        child: ListView(children: [
          ListTile(
            title: Text("Tweet",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 16, color: Colors.white),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => compose_tweet()));
            },
          ),
          ListTile(
            title: Text("Logout",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 16, color: Colors.white),
                )),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => login_screen()));
            },
          )
        ]),
      ),
    );
  }
}
