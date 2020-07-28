import "package:flutter/material.dart";



class MyHomePage extends StatefulWidget {
  final AppBar appBar;

  MyHomePage({Key key, @required this.appBar}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(backgroundColor: Colors.red,),
       
    );
  }
}


