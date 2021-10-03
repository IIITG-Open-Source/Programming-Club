import 'package:flutter/material.dart';
import './form.dart';

void main() {
  runApp(MatApp());
}

class MatApp extends StatelessWidget {
  const MatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/form': (context) => FormPage(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List x = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Hue Hue'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/form').then(
                (value) {
                  setState(() {
                    x.add(value);
                  });
                },
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(
        children: x
            .map(
              (e) => CustomListTile(
                amt: e.amount,
                title: e.title,
              ),
            )
            .toList(),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String title;
  final double amt;

  const CustomListTile({
    Key? key,
    required this.amt,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(title),
          leading: CircleAvatar(
            backgroundColor: Colors.purple,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  amt.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          subtitle: Text(amt.toString()),
        ),
      ),
    );
  }
}
