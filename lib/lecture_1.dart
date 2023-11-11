import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

/// this is your APP Main screen configuration
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.favorite),
        title: const Text('Welcome to the Flatter'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return Container(
        padding: EdgeInsets.all(20),
        child:
            /*******************--[focus here 🧐]--*******************/
        IconButton(onPressed: (){},splashColor: Colors.yellowAccent,icon: Icon(Icons.add),)

        /*******************--[focus here 🧐]--*******************/
        );
  }

  Image image() {
    return Image.network(
              "https://hips.hearstapps.com/hmg-prod/images/sunrise-quotes-21-1586892331.jpg",
              fit: BoxFit.cover);
  }

  ElevatedButton elevatedButton() {
    return ElevatedButton(
      child: Text(
        "Press now",
        style: TextStyle(color: Colors.yellowAccent),
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 100),
          elevation: 6,
          shape: StadiumBorder()),
      onPressed: () {
        print("press me");
      },
    );
  }

  Icon icon() {
    return Icon(
      Icons.whatshot,
      color: Colors.red,
      size: 200,
      textDirection: TextDirection.ltr,
    );
  }

  Text text() {
    return Text(
      "Your first Quiz",
      style: TextStyle(
        fontSize: 40,
        color: Colors.green,
        fontFamily: 'casual',
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w200,
        letterSpacing: 3,
        backgroundColor: Colors.yellow,
      ),
    );
  }
}
