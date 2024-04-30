import 'package:flutter/material.dart';

void main() {
  runApp(const App703());
}

class App703 extends StatelessWidget {
  const App703({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('App 703'),
        ),
        body: const Center(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Flutter',
                textScaleFactor: 2.0,
              ),
              Text(
                'Muti-Platform App Framework',
                textScaleFactor: 1.5,
              ),
              Text('by Google'),
            ],
          ),
        ),
      ),
    );
  }
}
