import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'User.dart';


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
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Title'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: users.isEmpty ? buildEmptyView(context) : createListView(),
      //body: createListView(),
    );
  }

  Center buildEmptyView(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => getUserApi(context),
            child: Text("Get Users"),
          ),
        ],
      ),
    );
  }

  getUserApi(BuildContext context) async {
    var response =
    await http.get(Uri.parse('https://gorest.co.in/public/v2/users'));
    if (response.statusCode == 200) {
      var list = jsonDecode(response.body) as List;
      list.forEach((element) {
        User user = User.fromJson(element);
        print(user.name);
        users.add(user);
      });
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error ${response.reasonPhrase}')),
      );
    }
  }

  createListView() {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  users[index].name,
                  style: TextStyle(fontSize: 14),
                ),
                subtitle: Text(
                  users[index].email,
                ),
                leading: Icon(users[index].gender == "female"? Icons.female: Icons.male),
              ),
              Divider()],
          );

        });
  }
}
