import 'package:app1202_send_data/page2.dart';
import 'package:app1202_send_data/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1202());
}

class App1202 extends StatelessWidget {
  const App1202({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naviagtor'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Home Page',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnPage2(context),
            SizedBox(
              height: 30,
            ),
            btnPage3(context),
          ],
        ),
      ),
    );
  }

  Widget btnPage2(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.push(
          ctx, MaterialPageRoute(builder: (ctx) => Page2(id: 789))),
      child: Text(
        'Go to Page 2 >>',
        textScaleFactor: 1.5,
      ));

  Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.push(
          ctx,
          MaterialPageRoute(
              builder: (ctx) => Page3(
                    num: 1000000,
                    text: 'One Million',
                    boolean: true,
                  ))),
      child: Text(
        'Go to Page 3 >>',
        textScaleFactor: 1.5,
      ));
}
