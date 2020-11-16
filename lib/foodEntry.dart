import 'package:flutter/material.dart';
import 'package:healthapp/foodList.dart';
//import 'package:provider/provider.dart';

class FoodEntry extends StatefulWidget {
  @override
  _FoodEntryState createState() => _FoodEntryState();
}

class _FoodEntryState extends State<FoodEntry> {
  @override
  DateTime now = new DateTime.now();
  Future _getdate() async {
    DateTime date = new DateTime(now.year, now.month, now.day);
    print(date); // something like 2013-04-20
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Entry'),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      backgroundColor: Colors.blue[400],
      body: Container(
        padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 20.0),
        //title: Center(child: Text('Breakfast')),

        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // ListTile(
              //   title: Text(
              //        display:(date),
              //       // "${DateFormat("EEEE").format(now)}, ${DateFormat("d MMMM").format(now)}",
              //       ),
              // ),
              ListTile(
                title: Center(child: Text('Enter Food')),
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FoodListt()));
                  },
                  icon: Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
add circle next to breakfast/lunch/dinner

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return StreamProvider<Tracker>.value(
                        value: DatabaseService(uid: user.uid).tracker,
                        child: CustomNavigator(
                          home: Search(
                            currentMeal.mealName,
                          ),
                          pageRoute: PageRoutes.materialPageRoute,
                        ),
                      );
                    },
                  ),
                );
              },
              child: Container(
                width: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.add_circle,
                      size: 25,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
              ),
            )
*/
