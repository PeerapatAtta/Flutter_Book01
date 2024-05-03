import 'package:flutter/material.dart';

void main() {
  runApp(const App1103());
}

class App1103 extends StatelessWidget {
  const App1103({super.key});

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
        title: Text('GridView.builder'),
      ),
      body: GridView.builder(
        itemCount: 6,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          childAspectRatio: 1,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => buildItem(index + 1),
      ),
    );
  }

  Widget buildItem(int index) => Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.network(
            'https://picsum.photos/250?random=$index',
            fit: BoxFit.cover,
          ),
          textTitle('Number $index'),
        ],
      );

  Widget textTitle(String text) => Container(
        child: Text(
          text,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white),
        ),
        height: 35,
        color: Colors.black54,
        alignment: Alignment.center,
      );
}
