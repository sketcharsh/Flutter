import 'package:firstapp/Ui/custom_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amberAccent,
      child: Center(
        child: Text(
          "Hello flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  _btnAlarmTapped() {
    // _ for private keyword
    debugPrint("Alarm Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Scaffold Example"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle_sharp),
            onPressed: () => debugPrint("Account Tapped"),
          ),
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: _btnAlarmTapped,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.black,
          child: Icon(Icons.missed_video_call)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Account"),
          BottomNavigationBarItem(
              icon: Icon(Icons.email_rounded), label: "Email")
        ],
      ),
      backgroundColor: Colors.amberAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton()
            // InkWell(
            //   child: Text(
            //     "SUBMIT",
            //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //   ),
            //   onTap: () => debugPrint("Moj"),
            // )
          ],
        ),
      ),
    );
  }
}
