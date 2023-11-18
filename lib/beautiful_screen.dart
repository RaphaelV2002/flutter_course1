import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'PassionOne',
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'PassionOne',
      ),
      themeMode: ThemeMode.dark,
      home: MyHomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Saratov",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("+");
            },
            icon: Icon(
              Icons.add,
              size: 40,
            ),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sky.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: flowerDetails(context),
      ),
    );
  }
}

Widget flowerDetails(BuildContext context) {
  return ListView(
    primary: false,
    padding: const EdgeInsets.all(10),
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Now(),
            Forecast(),
          ],
        ),
      ),
    ],
  );
}

Widget Now() {
  return Container(
    padding: EdgeInsets.only(top: 200, right: 40, left: 40),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.transparent,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "-2\u2103",
              style: TextStyle(
                color: Colors.white,
                fontSize: 75,
              ),
            ),
          ),
        ),
        Center(
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Cloudy 0\u2103 / -7\u2103",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget Forecast() {
  return Container(
    padding: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.black12,
    ),
    child: Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.white54,
                  ),
                  Text(
                    '5 day forecast',
                    style: TextStyle(color: Colors.white54, fontSize: 25),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'More details',
                    style: TextStyle(color: Colors.white54, fontSize: 15),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white54,
                    size: 15,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.cloud,
                  ),
                  Text(
                    ' Today Mainly cloudy',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Text(
                '0\u2103 / -7\u2103',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.sunny,
                    color: Colors.yellow,
                  ),
                  Text(
                    ' Tomorrow Sunny',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Text(
                '3\u2103 / -1\u2103',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.cloudy_snowing,
                  ),
                  Text(
                    ' Monday Snowing',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Text(
                '0\u2103 / -1\u2103',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              print("b");
            },
            child: Text(
              "5 day forecast",
              style: TextStyle(color: Colors.white, fontSize: 19),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(
                  top: 10,
                  bottom: 10,
                  right: 50,
                  left: 50,
                ),
                elevation: 6,
                shape: StadiumBorder(),
                backgroundColor: Colors.white38),
          ),
        ],
      ),
    ),
  );
}
