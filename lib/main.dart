import 'package:flutter/material.dart';

void main () => runApp(MyApp(
  items: List<String>.generate(100,(i) => "item $i")
));

class MyApp extends StatelessWidget {
  final List<String> items;
  MyApp({Key key,@required this.items}) : super(key: key);
  @override 
  Widget build (BuildContext context){
    return MaterialApp(
      title:'hhh',
      home:Scaffold(
        appBar: AppBar(
          title:Text('鑫哥的ListView1'),
        ),
        body: GridView.count(
          crossAxisCount:3,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          childAspectRatio:0.7,
          children: <Widget>[
            Image.network('http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',fit: BoxFit.cover),
             Image.network('http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',fit: BoxFit.cover),
             Image.network('http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',fit: BoxFit.cover),
             Image.network('http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',fit: BoxFit.cover),
             Image.network('http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',fit: BoxFit.cover),
             Image.network('http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',fit: BoxFit.cover),
             Image.network('http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',fit: BoxFit.cover),
             Image.network('http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',fit: BoxFit.cover),
             Image.network('http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',fit: BoxFit.cover),
          ],
        ),

     ),
    );
  }
}