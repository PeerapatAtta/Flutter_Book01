import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const App705());
}

class App705 extends StatelessWidget {
  const App705({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var rnd = Random();
  num _r = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Test')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(_r.toString()),
            SizedBox(
              height: 20,
            ),
            TextButton(
              child: Text('Random Number'),
              onPressed: () {
                setState(() {
                  _r = rnd.nextInt(100);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
