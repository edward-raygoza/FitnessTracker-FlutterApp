import 'package:flutter/material.dart'; // has lots of built in widgets, also has base class allowing you to create own widgets
import 'myHomePage.dart';
import 'bottomNavBar.dart';

//use ctrl+space to get list

void main() {
  runApp(MyApp()); //takes widgets and runs that
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage(),
      home: NavigationBar(),
    );
  }
}
