import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//

class AddPostScreenTemplate extends StatefulWidget {
  /// make the screen introduce it self
  static getRoute(BuildContext context) {
    /// Exercise 4 return PageRouteBuilder to show this screen recap last lesson or search Internet if you forgot
    return Navigator.push(context,
        MaterialPageRoute(builder: (context) => AddPostScreenTemplate()));
  }

  const AddPostScreenTemplate({Key? key}) : super(key: key);

  @override
  _AddPostScreenTemplateState createState() => _AddPostScreenTemplateState();
}

class _AddPostScreenTemplateState extends State<AddPostScreenTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new user'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [
            TextField(controller: TextEditingController(),
        decoration: const InputDecoration(
          icon: Icon(Icons.title),
          filled: true,
          hintText: 'write title here...',
          labelText: 'title ',
        ),
        ),
        SizedBox(
          height: 16,
        ),
        TextField(controller: TextEditingController(),
          decoration: const InputDecoration(
            icon: Icon(Icons.message),
            filled: true,
            hintText: 'write text here...',
            labelText: 'comment ',
          ),
        ),
        SizedBox(
          height: 16,
        ),
        ElevatedButton(
          onPressed: () {
            /// Exercise 5 call addComment with Named parameter
          },
          child: Text("Add Comment".toUpperCase()),
        )
        ],
      ),
    ),);
  }

  void addComment({required String title,
    required String text}) async {
    var response = await http.post(
        Uri.parse(
          "https://gorest.co.in/public/v2/users",
        ),
        headers: {
          "Authorization":
          "Bearer ed0645c09baf75ccb7b21afc0af41ab01f0770fd90e831d5295fab6c77d96965",
          "Content-Type": "application/json",
        },
        body: jsonEncode({
          "title": "$title",
          "text": "$text",
        }));

    print(response.body);
    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Comment Added')));
    } else
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Error ${response.body}')));
  }
}
