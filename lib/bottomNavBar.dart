import 'package:flutter/material.dart';
import 'package:healthapp/myHomePage.dart';
import 'package:healthapp/foodEntry.dart';
//import 'myHomePage.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    /* The folloding 3 functions  */
    MyHomePage(), //0
    //Text('home'),
    FoodEntry(),
    //Text('Implement'), //1
    Text('Implement'), //2
  ];

//tap function
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //list of options at botton of navigation bar
        items: const <BottomNavigationBarItem>[
          //Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          //Food Entry
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            title: Text('Food Entry'),
          ),
          //third option
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('third option'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
