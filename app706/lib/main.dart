import 'package:flutter/material.dart';

void main() {
  runApp(const App706());
}

class App706 extends StatelessWidget {
  const App706({super.key});
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
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  num a = 15, b = 5;
  String text = '';

  // ignore: non_constant_identifier_names
  void btn_pressed({String op = ''}) {
    setState(() {
      num r = 0;
      if (op == '+') {
        r = a + b;
      } else if (op == '-') {
        r = a - b;
      }
      text = '15+5=$r';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App706'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            // ignore: deprecated_member_use
            Text(text, textScaleFactor: 1.2),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => btn_pressed(op: '+'),
              child: Text('$a+$b', textScaleFactor: 1.2),
            ),
            ElevatedButton(
              onPressed: () => btn_pressed(op: '-'),
              child: Text('$a-$b', textScaleFactor: 1.2),
            ),
          ], // Children
        ),
      ),
    );
  }
}
