import 'package:flutter/material.dart';

void main() {
  runApp(const App1105());
}

class App1105 extends StatelessWidget {
  const App1105({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var items = [
    'iPhone',
    'iPad',
    'MacBook',
    'iOS',
    'Android',
    'Google',
    'Flutter'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 5),
        itemExtent: 80,
        children: listViewChildren(),
      ),
    );
  }

  List<Widget> listViewChildren() =>
      List.generate(items.length, (index) => listItem(items[index]));

  Widget listItem(String text) => Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,textScaleFactor: 1.5,),
        Icon(Icons.arrow_forward_ios)
      ],
    ),
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10) ),
  );
}
