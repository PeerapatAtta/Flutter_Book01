import 'package:flutter/material.dart';

void main() {
  runApp(const App707());
}

class App707 extends StatelessWidget {
  const App707({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  num a = 15, b = 5;
  String _text = '';

  void btn_pressed({String op = ''}) => setState(() {
        num r = 0;
        if (op == '+') {
          r = a + b;
        } else if (op == '-') {
          r = a - b;
        }
        _text = '15+5 = $r';
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App707')),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              _text,
              textScaleFactor: 1.2,
            ),
            SizedBox(
              height: 20,
            ),
            btnPlus(),
            btnMinus(),
          ],
        ),
      ),
    );
  }

  Widget btnPlus() => ElevatedButton(
      onPressed: () => btn_pressed(op: '+'),
      child: Text(
        '$a+$b',
        textScaleFactor: 1.2,
      ));
  Widget btnMinus() => ElevatedButton(
      onPressed: () => btn_pressed(op: '-'),
      child: Text(
        '$a-$b',
        textScaleFactor: 1.2,
      ));
}
