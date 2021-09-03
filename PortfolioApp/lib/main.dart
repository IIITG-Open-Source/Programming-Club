import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
              'https://mystickermania.com/cdn/stickers/memes/polite-cat-meme-512x512.png',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Rituparna Warwatkar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .75,
            child: Divider(
              color: Colors.white,
              height: 20,
              thickness: 1.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                ),
                title: Text(
                  '+91 77985 16764',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                ),
                title: Text(
                  'rwarwatkar@gmail.com',
                  style: TextStyle(
                    color: Colors.teal,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
