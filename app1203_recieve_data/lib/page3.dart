import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  var a;
  var b;

  Page3({
    required this.a,
    required this.b,
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
              'Page 3 \n\n a =$a, b = $b,',
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
      onPressed: () => Navigator.pop(ctx, [123, 'One-Two-Three']),
      child: Text(
        '<< Back',
        textScaleFactor: 1.5,
      ));
}
