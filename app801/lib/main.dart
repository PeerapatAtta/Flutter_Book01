import 'package:flutter/material.dart';

void main() {
  runApp(const App801());
}

class App801 extends StatelessWidget {
  const App801({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App801'),
        ),
        body: Center(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            textButton(),
            elevatedButton(),
            outlineButton(),
          ],
        )),
      ),
    );
  } // build

  Widget textButton() => TextButton(
      onPressed: null,
      child: Text(
        'Text Button',
        style: TextStyle(color: Colors.indigo, fontSize: 18),
      ));

  Widget elevatedButton() => ElevatedButton(
        onPressed: () {},
        child: Text(
          'Elevation Button',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.white,
            shape: StadiumBorder()),
      );

  Widget outlineButton() => OutlinedButton(
        onPressed: () {},
        child: Text(
          'Outline Button',
          style: TextStyle(fontSize: 20),
        ),
        style: OutlinedButton.styleFrom(
            side: BorderSide(
                color: Colors.black26, width: 1.2, style: BorderStyle.solid)),
      );
}
