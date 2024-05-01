import 'package:flutter/material.dart';

void main() {
  runApp(const App903());
}

class App903 extends StatelessWidget {
  const App903({super.key});

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
        title: Text('Row and Column'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            boxContainer('One'),
            boxContainer('Tow'),
            boxContainer('Three'),
            Row(
              children: [
                boxContainer('Left'),
                boxContainer('Center'),
                boxContainer('Right'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget boxContainer(String text) => Container(
        child: Text(
          text,
          textScaleFactor: 1.5,
        ),
        width: 80,
        height: 80,
        color: Colors.black12,
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
      );
}
