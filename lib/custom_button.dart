import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final Function(String) onClicked;

  CustomButton({@required this.name, @required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(child: Text(name), onPressed: ()=>onClicked("4"));
  }
}