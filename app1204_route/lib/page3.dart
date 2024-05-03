import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page3'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Page 3',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnBack(context),
          ],
        ),
      ),
    );
  }

  Widget btnBack(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pop(ctx),
      child: Text(
        '<< Back',
        textScaleFactor: 1.5,
      ));
}
