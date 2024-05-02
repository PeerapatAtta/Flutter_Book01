import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  int num;
  String text;
  bool boolean;

  Page3({
    required this.num,
    required this.text,
    required this.boolean,
  });

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
              '''
              Page 3 \n
              num: $num,
              text: $text,
              boolean: $boolean
              ''',
              textScaleFactor: 1.6,
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
