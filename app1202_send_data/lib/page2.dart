import 'package:app1202_send_data/page3.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
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
              'Page 2\nproduct id: $id',
              textScaleFactor: 1.6,
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
        textScaleFactor: 1.5,
      ));

  Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () =>
          Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => Page3(
            num: 555,
            text: 'hahahaha',
            boolean: false,
          ))),
      child: Text(
        'Go to Page 3 >>',
        textScaleFactor: 1.5,
      ));
}
