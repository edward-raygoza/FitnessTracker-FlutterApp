import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller =
      TextEditingController(); //controls what goes inside textinput

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.input),
          labelText: "Name",
          suffixIcon: IconButton(
            icon: Icon(Icons.save),
            splashColor: Colors.blue,
            tooltip: "Save name",
            onPressed: () => {},
          )),
    );
  }
}
