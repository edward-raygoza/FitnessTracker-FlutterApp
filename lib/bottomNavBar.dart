import 'package:flutter/material.dart';
import 'package:healthapp/myHomePage.dart';
//import 'myHomePage.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    //Text('home'),
    Text('Messages'),
    Text('houses'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('test'),
      // ),
      //body: Text('Home'),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('hel'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('hi'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('hi'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
