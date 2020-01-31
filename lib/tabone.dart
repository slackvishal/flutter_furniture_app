import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: TabOne(),
    );
  }
}

class TabOne extends StatefulWidget {
  TabOne({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TabOneState createState() => _TabOneState();
}

class _TabOneState extends State<TabOne> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Dimensions:", style: TextStyle(
              color: Colors.black87,
              fontSize: 16.0,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10.0,),
            Text("H 33 x W 18 x D 22", style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            ),),
            Text("Seating height -17.9", style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            ),),
            Text("all dimensions in inches", style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 20.0,),
            Text("Material:", style: TextStyle(
                color: Colors.black87,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 10.0,),
            Text("Polypropulene Fabric Foam Beach Wood", style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                fontWeight: FontWeight.bold
            ),),
          ],
        ),
      ),

    );
  }
}