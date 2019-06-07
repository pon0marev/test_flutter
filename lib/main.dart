import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int alfa = 255;
  int red = 30;
  int green = 255;
  int blue = 50;


  void _changeColor() {
    setState(() {
      Random random = new Random();
      alfa = random.nextInt(255);
      red = random.nextInt(255);
      green = random.nextInt(255);
      blue = random.nextInt(255);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(


      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.android),
          onPressed: () {},
        ),
        title: new Text("Test application")
        ,
      ),

      body: GestureDetector(
        onTap: () {
          _changeColor();
        },
        child: Container(
          color: Color.fromARGB(alfa, red, green, blue),
          child: Center(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                    'Hey there',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(
                            255, 255 - red, 255 - green, 255 - blue)
                    )

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
