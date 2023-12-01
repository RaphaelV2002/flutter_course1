import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.red,
                accentColor: Colors.deepOrangeAccent)),
        home: MyAppHome());
  }
}

class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        title: Text('App Title'),
        leading: Text('Hello'),
      ),
      body: MySecondWidget(),
    );
  }
}

class MySecondWidget extends StatelessWidget {
  const MySecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
