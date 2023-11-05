import 'package:flutter/material.dart';

void main() => runApp(Lab1());

/// this is your APP Main screen configuration
class Lab1 extends StatelessWidget {
  Lab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LAb1HomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class LAb1HomePage extends StatelessWidget {
  LAb1HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.stars),
        title: const Text('Lab 1'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          /*******************--[focus here 🧐]--*******************/
          SizedBox(
            height: 25,
          ),
          exercise1(),
          SizedBox(
            height: 25,
          ),
          exercise2(),
          SizedBox(
            height: 25,
          ),
          exercise3(),
          SizedBox(
            height: 25,
          ),
          exercise4(),
          SizedBox(
            height: 25,
          ),
          exercise5(),
          SizedBox(
            height: 25,
          ),
          exercise6(),
          /*******************--[focus here 🧐]--*******************/
        ],
      ),
    );
  }

  Widget exercise1() {
    return Text(
      "Welcome to lab1",
      style: TextStyle(
        fontSize: 20,
        color: Colors.lightGreenAccent,
        fontFamily: 'monospace',
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w200,
        letterSpacing: 3,
        backgroundColor: Colors.grey,
      ),
    );
  }

  Widget exercise2() {
    return Icon(
      Icons.share,
      color: Colors.blue,
      size: 200,
      textDirection: TextDirection.ltr,
    );
  }

  /// TODO : print on the screen on Pressed when clicking on the button, and print on Long Pressed when long click to Button
  Widget exercise3() {
    return ElevatedButton(
      child: Text(
        "Click here",
        style: TextStyle(color: Colors.yellowAccent),
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 50),
          elevation: 6,
          shape: StadiumBorder()),
      onPressed: () {
        print("on Pressed");
      },
      onLongPress: () {
        print("Long pressed");
      },
    );
  }

  Widget exercise4() {
    return ElevatedButton(
      child: Icon(
        Icons.favorite,
        color: Colors.greenAccent,
        size: 20,
        textDirection: TextDirection.ltr,
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15),
          elevation: 6,
          backgroundColor: Colors.black,
          shape: CircleBorder()),
      onPressed: () {
        print("on Pressed");
      },
      onLongPress: () {
        print("Long pressed");
      },
    );
  }

  Widget exercise5() {
    return OutlinedButton(
      child: Text(
        "Button to press",
        style: TextStyle(color: Colors.green),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 1.0, color: Colors.green),
      ),
      onPressed: () {
        print("on Pressed");
      },
      onLongPress: () {
        print("Long pressed");
      },
    );
  }

  Widget exercise6() {
    return Container(
      padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border(
          left: BorderSide(
            color: Colors.pink,
            width: 10.0,
          ),
          right: BorderSide(
            color: Colors.blue,
            width: 10.0,
          ),
          top: BorderSide(
            color: Colors.lightBlue,
            width: 10.0,
          ),
          bottom: BorderSide(
            color: Colors.green,
            width: 10.0,
          ),
        ),
      ),
      child: Icon(
        Icons.warning,
        color: Colors.black,
        size: 30,
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
