import 'package:flutter/material.dart';
import 'package:flutter_furniture_app/tabfour.dart';
import 'package:flutter_furniture_app/tabone.dart';
import 'package:flutter_furniture_app/tabthree.dart';
import 'package:flutter_furniture_app/tabtwo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Second(),
    );
  }
}

class Second extends StatefulWidget {
  Second({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EFEE),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300.0,
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.yellow[700],
                      Color(0xffF0EFEE)
                    ])
                  ),
                ),

                Positioned(
                  top: 50.0,
                  right: 20.0,
                  left: 20.0,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                          onTap:(){
                            Navigator.pop(context);
                },
                          child: Icon(Icons.arrow_back, color: Colors.black87, size: 25.0,)),
                      Spacer(),
                      Icon(Icons.star_border, color: Colors.black87, size: 25.0,),
                    ],
                  ),
                ),
                Positioned(
                    top: 70.0,
                    child: Hero(
                        tag: 'chair',
                        child: Image.asset("assets/bigchair.png", height: 230.0, width: 230.0,)))
              ],
            ),

            SizedBox(height: 30.0,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text("Blue Chair", style: TextStyle(
                    color: Colors.black87,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Text("\$33", style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Dimensions: H 33 x W 18 x D 22", style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("Seating Height: -17.9", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("all dimensions in inches", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  Spacer(),
                  Text("offer price", style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.yellow[800],),
                  SizedBox(width: 5.0,),
                  Text("4.2 | 234 reviews", style: TextStyle(
                    color: Colors.grey[850],
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  ),)
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Divider(thickness: 0.5,),
            TabBar(
              controller: tabController,
                indicatorColor: Colors.blueAccent,
                labelColor: Colors.blueAccent,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text("Specifications", style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  Tab(
                    child: Text("FAQ\'S", style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Tab(
                    child: Text("Care", style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Tab(
                    child: Text("Terms", style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ]),
            Container(
              height: 375.0,
              child: TabBarView(
                controller: tabController,
                  children: <Widget>[
                    TabOne(),
                    TabTwo(),
                    TabThree(),
                    TabFour()
                  ]),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton.extended(
          onPressed: null,
          label: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Buy Now", style: TextStyle(
              fontSize: 20.0
            ),),
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: Container(
        height: 70.0,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(Icons.star, color: Colors.grey,),
            Icon(Icons.shopping_cart, color: Colors.grey,),
            Icon(Icons.person_pin, color: Colors.grey,),
          ],
        ),
      ),

    );
  }
}
