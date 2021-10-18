import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'compose_tweet.dart';
import 'login_screen.dart';

class dashboard_screen extends StatefulWidget {
  @override
  _dashboard_screenState createState() => _dashboard_screenState();
}

class _dashboard_screenState extends State<dashboard_screen> {
  List<Widget> _cardList = [];

  void _addCardWidget() {
    setState(() {
      _cardList.add(_card());
    });
  }

  Widget _card() {
    return Container(
      height: 80,
      margin: EdgeInsets.only(top: 5,left: 8,right: 8),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:Color(0xFF1C1E31),
      ),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            radius : 28 ,
            backgroundColor:  Colors.white ,
            child: CircleAvatar(
              radius:  26,
              backgroundImage:  NetworkImage(
                  "https://i.pinimg.com/564x/2e/2f/bd/2e2fbddc9adbe65d16d28690e64a9cc3.jpg"),
            ),
          ),
          title: Text(
            "admin",
            style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.white)),
          ),
          subtitle: Text(
            '$str_tweet',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white),
          ),
          trailing: Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C1E31),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => compose_tweet()));
      //   },
      //   child: Icon(Icons.navigation),
        
      // ),
      appBar: AppBar(
        shadowColor: Colors.grey[600],
        title: Text(
          "Weeter",
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1C1E31),
        actions: [
          ElevatedButton(onPressed: (){_addCardWidget();}, child: Text("Refresh"))
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _cardList.length,
            itemBuilder: (context,index){
          return _cardList[index];
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>compose_tweet()));},
        tooltip: 'Add',
        child: Icon(Icons.add),
      ), 
      drawer: Drawer(
        backgroundColor: Color(0xFF1C1E31),
        child: ListView(children: [
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
