import 'package:app1204_route/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
              'Page 2',
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
      onPressed: () => Navigator.pop(ctx),
      child: Text(
        '<< Back',
        textScaleFactor: 1.3,
      ));

  Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pushNamed(ctx, '/page3'),
      child: Text(
        'Go to Page 3 >>',
        textScaleFactor: 1.3,
      ));
}
