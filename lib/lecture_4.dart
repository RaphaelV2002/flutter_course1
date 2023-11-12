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
      margin: EdgeInsets.all(8),
      color: Colors.black12,
      child: Wrap(
        spacing: 30,
        children: [
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Container container5() {
    return Container(
      margin: EdgeInsets.all(8),
      color: Colors.black12,
      child: Column(
        children: [
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 50,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
          ),
          Image.network(
            "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
            height: 40,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  Container container4() {
    return Container(
        padding: EdgeInsets.all(20),
        height: 300,
        width: 500,
        child: Stack(
          children: [
            Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/e/ea/Spring_Lake%2C_New_Jersey_Beach_at_Sunrise.jpg",
                height: 300,
                fit: BoxFit.cover),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Sunrise",
                style: TextStyle(
                    fontSize: 50,
                    backgroundColor: Colors.black45,
                    color: Colors.white,
                    fontFamily: "cursive"),
              ),
            )
          ],
        ));
  }

  Container container3() {
    return Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        height: 500,
        color: Colors.black12,
        child:
            /*******************--[focus here 🧐]--*******************/
            Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.greenAccent,
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blueAccent,
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
          ],
        )
        /*******************--[focus here 🧐]--*******************/
        );
  }

  Container container2() {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Scrollbar(
        thickness: 6,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                size: 100,
              ),
              Icon(
                Icons.add,
                size: 100,
              ),
              Icon(
                Icons.add,
                size: 100,
              ),
              Icon(
                Icons.add,
                size: 100,
              ),
              Icon(
                Icons.add,
                size: 100,
              ),
              Icon(
                Icons.add,
                size: 100,
              ),
              Icon(
                Icons.add,
                size: 100,
              ),
              Icon(
                Icons.add,
                size: 100,
              ),
              Icon(
                Icons.add,
                size: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container container() {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Column(
          textDirection: TextDirection.ltr,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: Text("1"),
                color: Colors.red,
                width: 300,
              ),
            ),
            Expanded(
              child: Container(
                child: Text("2"),
                color: Colors.yellow,
                width: 300,
              ),
            ),
            Expanded(
              child: Container(
                child: Text("3"),
                color: Colors.greenAccent,
                width: 300,
              ),
            ),
            Expanded(
              child: Container(
                child: Text("4"),
                color: Colors.blueGrey,
                width: 300,
              ),
            ),
          ]),
    );
  }
}
