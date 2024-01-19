

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List color=[Colors.amber,Colors.blue,Colors.black,Colors.red];
  var defaultcolor=Colors.pink;

myfunction()
{

var colornumbering=Random().nextInt(color.length);//1,2,3 total 3 color// random numberlist

setState(() {
  
defaultcolor=color[colornumbering]; 


});




}


  @override
  Widget build(BuildContext context) {

    return  MaterialApp(

home: Scaffold(

  appBar:AppBar(title: const Text('backgroundchange'),centerTitle: true,),


  floatingActionButton: FloatingActionButton(onPressed: (() {

    myfunction();
    
  }),child: const Text('enter'),
),


body:Container(

  color:defaultcolor ,
) ,

    ));
    
  }
}

