import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build (BuildContext context){
    return MaterialApp(
      title:'hhh',
      home:Scaffold(
        appBar: AppBar(
          title:Text('鑫哥的ListView1'),
        ),
        body:Center(
         child: Container(
            height: 280,
            child:ListView(
            scrollDirection:Axis.horizontal,
            children: <Widget>[
              Container(
                width: 301,
                color:Colors.lightGreen,
              ),
              Container(
                width: 301,
                color:Colors.lightBlue,
              ),
              Container(
                width: 301,
                color:Colors.deepOrange,
              ),
              Container(
                width: 301,
                color:Colors.deepPurple,
              ),
            ],
          ),
         
         )
        )
      ),
    );
  }
}