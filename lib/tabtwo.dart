import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TabTwo(),
    );
  }
}

class TabTwo extends StatefulWidget {
  TabTwo({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TabTwoState createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
