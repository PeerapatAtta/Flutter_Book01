import 'dart:math';

import 'package:app1203_recieve_data/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  var rnd = Random();
  int id;
  Page2({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Page 2\n\n Data from HomePage = $id',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnBack(context),
            SizedBox(
              height: 30,
            ),
            btnPage3(context),
          ],
        ),
      ),
    );
  }

  Widget btnBack(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pop(ctx, rnd.nextInt(1000)),
      child: Text(
        '<< Back',
        textScaleFactor: 1.3,
      ));

  Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.push(
          ctx,
          MaterialPageRoute(
              builder: (ctx) => Page3(
                    a: 13,
                    b: 'Lucky Number',
                  ))),
      child: Text(
        'Go to Page 3 >>',
        textScaleFactor: 1.3,
      ));
}
