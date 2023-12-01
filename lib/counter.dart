import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

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
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: createListView(),
      //body: createListView(),
    );
  }

  Widget createListView() {
    return Center(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SizedBox(
          height: 100,
          width: 200,
          child: ElevatedButton(
            child: Text(
              "+ 1",
              style: TextStyle(fontSize: 50),
            ),
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(
                  top: 13,
                  bottom: 13,
                  right: 50,
                  left: 50,
                ),
                elevation: 6,
                shape: StadiumBorder(),
                backgroundColor: Colors.indigo),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
        ),
        Text(count.toString(), style: TextStyle(fontSize: 50)),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  child: Text("- 1", style: TextStyle(fontSize: 50)),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                        top: 13,
                        bottom: 13,
                        right: 50,
                        left: 50,
                      ),
                      elevation: 6,
                      shape: StadiumBorder(),
                      backgroundColor: Colors.indigo),
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 100,
                width: 200,
                child: ElevatedButton(
                  child: Text("- 10", style: TextStyle(fontSize: 50)),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.only(
                        top: 13,
                        bottom: 13,
                        right: 0,
                        left: 0,
                      ),
                      elevation: 6,
                      shape: StadiumBorder(),
                      backgroundColor: Colors.indigo),
                  onPressed: () {
                    setState(() {
                      count = count - 10;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
