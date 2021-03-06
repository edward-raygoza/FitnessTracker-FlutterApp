import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'drawerList.dart';
import 'bottomNavBar.dart';
import 'textInput.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //used to select image on first page
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
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text(
          'Fitness Tracker',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  //Center(
                  Text('Hello,',
                      style: TextStyle(
                        color: Colors.grey[900],
                        letterSpacing: 3.0,
                        fontSize: 30.0,
                      )),
                  //),
                  SizedBox(height: 5.0),
                  //Center(
                  Container(
                    width: 170.0,
                    child: TextField(
                        decoration: new InputDecoration.collapsed(
                            hintText: 'Enter Name'),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[900],
                          letterSpacing: 3.0,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  //),
                ]),
                SizedBox(width: 5.0),
                GestureDetector(
                  onTap: _getImage,
                  child: CircleAvatar(
                    radius: 80.0,
                    child: _image == null
                        ? Icon(
                            FontAwesomeIcons
                                .userCircle, //usercircle || userplus
                            size: 70.0,
                            color: Colors.black,
                          )
                        : new CircleAvatar(
                            backgroundImage: new FileImage(_image),
                            radius: 300.0,
                          ),
                    backgroundColor: Colors.white,
                  ),
                ),
                //SizedBox(height: 20.0),
              ],
            ),
            SizedBox(height: 20.0),
            //Text('data'),
            //Container(
            //height: 50.0,
            // SfRadialGauge(axes: <RadialAxis>[
            //   RadialAxis(
            //     minimum: 0,
            //     maximum: 100,
            //     showLabels: false,
            //     showTicks: false,
            //     axisLineStyle: AxisLineStyle(
            //       thickness: 0.2,
            //       cornerStyle: CornerStyle.bothCurve,
            //       color: Color.fromARGB(30, 0, 169, 181),
            //       thicknessUnit: GaugeSizeUnit.factor,
            //     ),
            //   )
            // ]),
            //),
            Text('CALORIES',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
            SizedBox(height: 2.0),
            CircularPercentIndicator(
              //center: Text('300/400'),
              progressColor: Colors.purple,
              percent: 0.5,
              animation: true,
              radius: 120.0,
              lineWidth: 15.0,
            ),
            SizedBox(height: 20.0),
            Text('PROTEIN',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
            SizedBox(height: 5.0),
            LinearPercentIndicator(
              progressColor: Colors.yellowAccent,
              percent: 0.5,
              animation: true,
              lineHeight: 10.0,
            ),
            SizedBox(height: 20.0),
            Text('CARBS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
            SizedBox(height: 5.0),
            LinearPercentIndicator(
              progressColor: Colors.redAccent,
              percent: 0.5,
              animation: true,
              lineHeight: 10.0,
            ),
            SizedBox(height: 20.0),
            Text('FATS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0)),
            SizedBox(height: 5.0),
            LinearPercentIndicator(
              progressColor: Colors.greenAccent,
              percent: 0.5,
              animation: true,
              lineHeight: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
