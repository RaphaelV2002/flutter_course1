import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isExpanded = true;
  bool isCircle = true;
  bool isVisible = true;
  int FlutterLogoNumber = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Lab 3',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: AnimatedContainer(
        margin: EdgeInsets.all(20),
        duration: Duration(milliseconds: 450),
        width: screenWidth,
        height: isExpanded ? screenHeight : 60,
        // to 0 when click on it, to screen height when also click on it
        color: Colors.indigo,
        child: Stack(
          children: [
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: Colors.yellow,
              child: InkWell(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Text(
                      'Click to Expand',
                      style: TextStyle(fontSize: 18),
                    )),
                    Icon(Icons.keyboard_arrow_up),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    changeShapes(screenWidth),
                    flutterChanger(screenWidth),
                    showHide(screenWidth),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget changeShapes(double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          margin: EdgeInsets.all(8),
          color: Colors.white,
          width: width,
          height: 150,

          /// ********** Do changes in child below ********** ///
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                  color: isCircle ? Colors.blue : Colors.red,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isCircle = !isCircle;
                    });
                  },
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: isCircle ? BoxShape.rectangle : BoxShape.circle,
                  color: isCircle ? Colors.red : Colors.blue,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isCircle = !isCircle;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget flutterChanger(double width) {
    switchStyleFlutterLogo() {
      FlutterLogoStyle flutterLogoStyle = FlutterLogoStyle.markOnly;
      switch (FlutterLogoNumber) {
        case 1:
          flutterLogoStyle = FlutterLogoStyle.horizontal;
          break;
        case 2:
          flutterLogoStyle = FlutterLogoStyle.stacked;
          break;
      }
      return flutterLogoStyle;
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
            margin: EdgeInsets.all(8),
            color: Colors.white,
            width: width,
            height: 150,

            /// ********** Do changes in child below ********** ///
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlutterLogo(
                  size: 100,
                  style: switchStyleFlutterLogo(),
                ),
                IconButton(
                  iconSize: 50,
                  onPressed: () {
                    setState(() {
                      FlutterLogoNumber++;
                      if (FlutterLogoNumber > 2) FlutterLogoNumber = 0;
                    });
                  },
                  color: Colors.indigo,
                  icon: Icon(Icons.change_circle_rounded),
                ),
              ],
            )),
      ),
    );
  }

  Widget showHide(double width) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          margin: EdgeInsets.all(8),
          color: Colors.white,
          width: width,
          height: 150,

          /// ********** Do changes in child below ********** ///
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Visibility(
                visible: isVisible,
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 100,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Icon(
                  Icons.lock_outline,
                  color: Colors.indigo,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
