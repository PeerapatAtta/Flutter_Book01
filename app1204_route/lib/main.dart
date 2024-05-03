import 'package:app1204_route/page2.dart';
import 'package:app1204_route/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1204());
}

class App1204 extends StatelessWidget {
  const App1204({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
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
      onPressed: () => Navigator.pushNamed(ctx, '/page2'),
      child: Text(
        'Go to Page 2 >>',
        textScaleFactor: 1.5,
      ));

  Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.pushNamed(ctx, '/page3'),
      child: Text(
        'Go to Page 3 >>',
        textScaleFactor: 1.5,
      ));
}
