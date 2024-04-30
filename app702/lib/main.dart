import 'package:flutter/material.dart';

void main() => runApp(App702());

class App702 extends StatelessWidget {
  const App702({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          //1
          appBar: AppBar(
            //2
            title: const Text('AppBar Section'), //3
          ),
          body: const Center(
              //4
              child: Text('Body Section')),
        ),
      );
}
