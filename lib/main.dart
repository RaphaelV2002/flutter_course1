import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_course1/AddPostScreenTemplate.dart';
import 'package:http/http.dart' as http;
import 'Post.dart';

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
        body: buildPostList());
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

  Future<List<Post>> getPosts() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      var list = jsonDecode(response.body) as List;
      list.forEach((element) {
        Post post = Post.fromJson(element);
        posts.add(post);
      });
      // setState(() {});
      return posts;
      //print(response.body);
    } else {
      throw Exception('Failed to load posts: ${response.reasonPhrase}');
    }
  }

  buildPostList() {
    Future<List<Post>> futurePosts = getPosts();
    return FutureBuilder(
      future: futurePosts,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          List<Post> posts = snapshot.data!;
          return buildListView(posts);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  ListView buildListView(List<Post> posts) {
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
            Divider()
          ],
        );
      },
    );
  }
}
