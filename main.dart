import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("images/zahraa.jpg"),
              radius: 60,
            ),
            Text("زهراء رائد",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Cairo",
                  fontWeight: FontWeight.bold,
                  color: Colors.pink,
                )),
            Text(
              "مبرمجة تطبيقات",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Cairo",
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(
                width: 300,
                child: Divider(
                  color: Colors.pink[900],
                )),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.pink,
                    size: 25,
                  ),
                  title: Text(
                    "07721605982",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.pink,
                    size: 25,
                  ),
                  title: Text(
                    "zahraa.raeed@gamil.com",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  )),
            ),
          ],
        )),
      ),
    );
  }
}
