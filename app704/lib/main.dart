// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const App704());
}

class App704 extends StatelessWidget {
  const App704({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(), //1
    );
  }
}

class HomePage extends StatelessWidget {
  //2
  const HomePage({super.key});

  @override
  Widget build(BuildContext ctx) => Scaffold(
        //3
        appBar: AppBar(
          title: const Text('App 704'),
        ),
        body: const Center(
            child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome',
              textScaleFactor: 1.5,
            ),
            Text('This is HomePage')
          ],
        )),
      );
}
