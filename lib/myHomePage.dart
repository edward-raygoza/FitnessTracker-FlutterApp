import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'textInput.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File _image;
  final ImagePicker _picker = ImagePicker();
  Future _getImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile.path);
      print('_image: $_image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.list),
        //   onPressed: () {},
        // ),
        title: Text('Fitness Tracker'),
        centerTitle: true,
        backgroundColor: Colors.blue[175],
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'Fitness Tracker',
                style: TextStyle(fontSize: 26.0),
              ),
              currentAccountPicture: CircleAvatar(
                child: FlutterLogo(size: 70.0),
                backgroundColor: Colors.green[100],
              ),
              accountEmail: null,
            ),
            SizedBox(height: 10.0),
            ListTile(
              title: Text('Nutrition'),
              onTap: () => Navigator.of(context).push(_NewPage(1)), //{
              // setState(() {
              //   mainWidget = Item1();
              // });
              //},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Container(
            //   child: Stack(
            //     children: <Widget>[
            //       Align(
            //         alignment: Alignment.topRight,
            //         child: Icon(Icons.edit),
            //       ),
            //       Container(
            //         //customBorder: new CircleBorder(),
            //         //onTap: () {},
            //         child: CircleAvatar(
            //           radius: 80.0,
            //           backgroundImage:
            //               NetworkImage('https://via.placeholder.com/150'),
            //           backgroundColor: Colors.transparent,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            //Center(

            GestureDetector(
              onTap: _getImage, //{
              //print('add image');
              //},
              child: CircleAvatar(
                //color: Colors.black12,
                radius: 80.0,
                child: _image == null
                    ? Icon(
                        FontAwesomeIcons.plus,
                        size: 70.0,
                        color: Colors.black,
                      )
                    : new CircleAvatar(
                        backgroundImage: new FileImage(_image),
                        radius: 300.0,
                      ),
                backgroundColor: Colors.grey[500],
              ),
            ),

            // InkWell(
            //   customBorder: new CircleBorder(),
            //   onTap: () {},
            //   // Align(alignment: Alignment.topRight,
            //   // child:Icon(Icons.edit),),
            //   child: CircleAvatar(
            //     radius: 80.0,
            //     backgroundImage: ,
            //     backgroundColor: Colors.transparent,
            //   ),
            // ),
            //),
            // Divider(
            //   height: 20.0,
            //   color: Colors.blue[600],
            // ),
            SizedBox(height: 20.0),
            Center(
              child: Text('Hello,',
                  style: TextStyle(
                    color: Colors.grey[900],
                    letterSpacing: 3.0,
                    fontSize: 20.0,
                  )),
            ),
            SizedBox(height: 5.0),
            Center(
              child: TextField(
                  decoration:
                      // InputDecoration(
                      //   prefixIcon: Icon(Icons.),
                      // ),
                      new InputDecoration.collapsed(hintText: 'Enter Name'),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[900],
                    letterSpacing: 3.0,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

// class Item1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('item 1'),
//     );
//   }
// }

class _NewPage extends MaterialPageRoute<Null> {
  _NewPage(int id)
      : super(builder: (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                title: Text('Page $id'),
              ),
              body: Center(
                child: Text('Page $id'),
              ));
        });
}
