import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // to change your app color change this
        primarySwatch: Colors.amber,
      ),
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
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text(
            'Flower Shop',
            style: TextStyle(fontFamily: 'casual'),
          ),
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            flowerDetails(context),
          ],
        ));
  }
}

Widget flowerDetails(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(20),
    color: Colors.amber,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        imageGroup(),
        titleGroup(),
        iconGroup(),
        textGroup(),
        buttonGroup(),
      ],
    ),
  );
}

/// Image URL
/// https://newevolutiondesigns.com/images/freebies/yellow-wallpaper-12.jpg

Widget imageGroup() {
  return Image.network(
    'https://upload.wikimedia.org/wikipedia/commons/a/a3/Iglesia_de_Nuestra_Se%C3%B1ora_de_La_Blanca%2C_Cardej%C3%B3n%2C_Espa%C3%B1a%2C_2012-09-01%2C_DD_02_cropped.JPG',
    fit: BoxFit.cover,
  );
}

Widget titleGroup() {
  return Container(
    padding: EdgeInsets.only(top: 16, bottom: 8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sunny Flowers',
          style: TextStyle(
            fontSize: 52,
            fontFamily: 'cursive',
          ),
        ),
        Text(
          '12 dosen',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}

Widget iconGroup() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.share,
          size: 40,
          color: Colors.indigo,
        ),
        Icon(
          Icons.favorite,
          size: 40,
          color: Colors.indigo,
        )
      ],
    ),
  );
}

/// here is the text to copy
///Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
Widget textGroup() {
  return Container(
    padding: EdgeInsets.only(
      top: 16,
      bottom: 40,
    ),
    child: Text(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      style: TextStyle(
        fontSize: 14,
        fontFamily: 'casual',
      ),
    ),
  );
}

Widget buttonGroup() {
  return ElevatedButton(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.add_shopping_cart,
          color: Colors.white,
        ),
        Text(
          "ADD TO CART",
          style: TextStyle(color: Colors.white),
        )
      ],
    ),
    style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(
          top: 13,
          bottom: 13,
          right: 100,
          left: 100,
        ),
        elevation: 6,
        shape: StadiumBorder(),
        backgroundColor: Colors.indigo),
    onPressed: () {
      print("pressed");
    },
  );
}
