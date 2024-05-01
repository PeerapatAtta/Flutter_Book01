import 'package:flutter/material.dart';

void main() {
  runApp(const App902());
}

class App902 extends StatelessWidget {
  const App902({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              boxContainer('One'),
              boxContainer('Two'),
              boxContainer('Three'),
              boxContainer('Four'),
              boxContainer('Five'),
              boxContainer('Six'),
              boxContainer('Seven'),
            ],
          ),
        ),
      ),
    );
  }

  Widget boxContainer(String text) => Container(
        child: Text(
          text,
          textScaleFactor: 1.5,
        ),
        width: 100,
        height: 150,
        color: Colors.black12,
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
      );
}
