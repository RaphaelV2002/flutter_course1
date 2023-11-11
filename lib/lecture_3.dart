import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      appBar: AppBar(
        leading: const Icon(Icons.android_sharp),
        title: const Text('App Title'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      /*******************--[focus here 🧐]--*******************/
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return Container(
        padding: EdgeInsets.all(20),
        child:
        /*******************--[focus here 🧐]--*******************/
        Container(
          height: 300,
          padding: EdgeInsets.only(bottom: 10),
          child: Column(
            textDirection: TextDirection.ltr,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "I",
                style: TextStyle(fontSize: 50, color: Colors.redAccent),
              ),
              Icon(
                Icons.favorite,
                size: 50,
                color: Colors.red,
              ),
              Text(
                "Flutter",
                style: TextStyle(fontSize: 50, color: Colors.cyan),
              ),
              FlutterLogo(size: 100,),
            ],
          ),
        )
      /*******************--[focus here 🧐]--*******************/
    );
  }
}
