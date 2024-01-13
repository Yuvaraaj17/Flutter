import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( App());
}

class App extends StatefulWidget {


  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int val=0;
  Random r=Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("The coin head is:" + (val==1 ? 'heads' : 'tails')),
        ),
        body: FloatingActionButton(
          onPressed: () {
            setState(() {
              val=r.nextInt(2);
            });
            print(val);
          },
          child: Text("click"),

        ),
      ),
    );
  }
}
