import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_course1/AddPostScreenTemplate.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.teal, accentColor: Colors.blueGrey)),
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
  List<Post> posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Posts List"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, AddPostScreenTemplate.getRoute(context));

          },
          child: Icon(Icons.add_comment_sharp),
        ),
        body: posts.isEmpty ? buildEmptyView() : buildUserList());
  }

  Widget buildEmptyView() {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            getPosts();
          },
          child: Text('press me')),
    );
  }

  getPosts() async {
    var response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      var list = jsonDecode(response.body) as List;
      list.forEach((element) {
        Post post = Post.fromJson(element);
        posts.add(post);
        print(post.userId);
        print(post.id);
        print(post.title);
        print(post.body);
      });
      setState(() {});
      //print(response.body);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error ${response.reasonPhrase}')),
      );
    }
  }

  buildUserList() {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ListTile(
              title: Text(
                posts[index].title,
                style: TextStyle(fontSize: 14),
              ),
              subtitle: Text(
                posts[index].body,
              ),
              leading: Icon(Icons.message),
            ),
            Divider()],
        );
      },
    );
  }
}

class Post {
  late int userId;
  late int id;
  late String title;
  late String body;

  Post.fromJson(Map<String, dynamic> json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
    body = json["body"];
  }
}