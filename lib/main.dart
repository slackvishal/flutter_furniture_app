import 'package:flutter/material.dart';
import 'package:flutter_furniture_app/second.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyMainPage(),
    );
  }
}

class MyMainPage extends StatefulWidget {
  MyMainPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyMainPageState createState() => _MyMainPageState();
}

class _MyMainPageState extends State<MyMainPage> {

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
                  color: Colors.yellow[700],
                ),

                Positioned(
                  top: 50.0,
                  left: 20.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.menu, color: Colors.white,),
                      SizedBox(height: 20.0,),
                      Text('''Furniture that fits
your style''', style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                      SizedBox(height: 20.0,),
                    ],
                  ),
                ),

                Positioned(
                  bottom: -30.0,
                  left: 20.0,
                  right: 20.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0, bottom: 15.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.search, color: Colors.blueAccent,),
                          SizedBox(width: 10.0,),
                          Text("Search furniture", style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 50.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text("Shop for", style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),),
                  Spacer(),
                  Text("See All", style: TextStyle(
                    color: Colors.blueAccent,
                  ),),
                ],
              ),
            ),

            SizedBox(height: 30.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Image.asset("assets/chair.png", height: 50.0, width: 50.0,),
                      SizedBox(height: 15.0,),
                      Text("Chair", style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black87
                      ),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset("assets/sofa.png", height: 50.0, width: 50.0,),
                      SizedBox(height: 15.0,),
                      Text("Sofa", style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87
                      ),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset("assets/bed.png", height: 50.0, width: 50.0,),
                      SizedBox(height: 15.0,),
                      Text("Bed", style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87
                      ),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset("assets/desk.png", height: 50.0, width: 50.0,),
                      SizedBox(height: 15.0,),
                      Text("Table", style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black87
                      ),)
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20.0,),
            Divider(thickness: 1.0,),
            SizedBox(height: 20.0,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                children: <Widget>[
                  Text("Today's deals", style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),),
                  Spacer(),
                  Text("See All", style: TextStyle(
                    color: Colors.blueAccent,
                  ),),
                ],
              ),
            ),

            SizedBox(height: 30.0,),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Second()));
                      },
                      child: Container(
                        height: 150.0,
                        width: 320.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[300],
                              blurRadius: 3.0
                            )
                          ]
                        ),
                        child: Stack(
                          children: <Widget>[
                            Align(
                                alignment: Alignment.bottomRight,
                                child: Hero(
                                    tag: 'chair',
                                    child: Image.asset("assets/bigchair.png"))),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Chairs starting from", style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0
                                  ),),
                                  Text("\$33", style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26.0
                                  ),),
                                  Spacer(),
                                  Text("Ends in 02:10:00", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18.0
                                  ),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 15.0,),

                    Container(
                      height: 150.0,
                      width: 320.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300],
                                blurRadius: 3.0
                            )
                          ]
                      ),
                      child: Stack(
                        children: <Widget>[
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset("assets/chair.png")),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Sofas starting from", style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0
                                ),),
                                Text("\$39", style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26.0
                                ),),
                                Spacer(),
                                Text("Ends in 02:10:00", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18.0
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
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
