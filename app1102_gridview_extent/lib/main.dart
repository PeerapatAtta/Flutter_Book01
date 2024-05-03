import 'package:flutter/material.dart';

void main() {
  runApp(const App1102());
}

class App1102 extends StatelessWidget {
  const App1102({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.extent'),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        padding: EdgeInsets.all(10),
        children: gridChildren(),
      ),
    );
  }

  List<Widget> gridChildren() => List.generate(10, (i) => ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.network('https://picsum.photos/250?random=$i',fit:BoxFit.cover),
  ));
}
