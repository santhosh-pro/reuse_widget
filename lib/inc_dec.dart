import 'package:flutter/material.dart';

class IncDec extends StatefulWidget {
  final int  initialValue;
  final Function(String) onclick;
  
  IncDec({@required this.onclick,this.initialValue});

  @override
  _IncDecState createState() => _IncDecState();

}

class _IncDecState extends State<IncDec> {
 int count= 0;

  @override
  void initState() {
    count=widget.initialValue;
    super.initState();
  }
 
  void low(){

    setState(() {
      count--;
    
    });
      widget.onclick(count.toString());
  }

  void high(){

    setState(() {
      count++;
     
    });
     widget.onclick(count.toString());

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(

        child:Column(
           children: <Widget>[
              RaisedButton(child:Text("-"),onPressed: low),
              RaisedButton(child:Text(count.toString()),onPressed:null),
              RaisedButton(child:Text("+"),onPressed:high),
           ],

        ) 

      ) 
    );
  }
}