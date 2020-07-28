import 'package:flutter/material.dart';

import 'MyHomePage.dart';
import 'advanceMenuDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool flip = false;
    AppBar appBar = flip
        ? AppBar()
        : AppBar(
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => AdvanceMenuDrawer.of(context).open(),
                );
              },
            ),
            title: Text('Hello Flutter Europe'),
          );
    Widget child= MyHomePage(appBar: appBar);
    if (flip) {
      child = Container();
    } else {
      child = AdvanceMenuDrawer(child: child);
    }
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: child,
    );
  }
}