import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const App1107());
}

class App1107 extends StatelessWidget {
  const App1107({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var rnd = Random();
  var items = [
    'Apple',
    'Flutter',
    'Dart',
    'Google',
    'Android',
    'iOS',
    'Hello',
    'Thailand',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView_TextShape'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) => buildListTile(index),
        separatorBuilder: (context, i) => Divider(
          thickness: 1,
          color: Colors.blueGrey,
          indent: 10,
          endIndent: 10,
        ),
        itemCount: items.length,
      ),
    );
  }

  Widget buildListTile(index) => ListTile(
        leading: circleText(items[index][0]),
        title: Text(
          items[index],
          textScaleFactor: 1.3,
        ),
        subtitle: Text('\$${10 + rnd.nextInt(20)}'),
        trailing: Icon(Icons.arrow_forward_ios),
      );

  Widget circleText(String char) => CircleAvatar(
        radius: 20,
        child: buildText(char),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      );

  Widget buildText(String char) => Text(
        char,
        textScaleFactor: 1.5,
        style: TextStyle(color: Colors.white),
      );
}
