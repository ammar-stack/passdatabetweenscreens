// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'main.dart';
class homescreen extends StatelessWidget {
  String nameFromHome;
  homescreen(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellowAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Welcome $nameFromHome ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
            ),
            SizedBox(height: 50,),
            Builder(
            builder: (cxt) => ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) =>MyApp() )));
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                ),
                child: const Text('Back', style: TextStyle(fontSize: 25))),
          )
          ],
        ),
      ),
    );
  }
}