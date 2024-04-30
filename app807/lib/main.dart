import 'package:flutter/material.dart';

void main() {
  runApp(const App807());
}

class App807 extends StatelessWidget {
  const App807({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title text'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            buttonAlert1(),
            SizedBox(
              height: 30,
            ),
            buttonAlert2(),
          ],
        ),
      ),
    );
  }

  Widget buttonAlert1() => TextButton(
        onPressed: () => materialAlert(context,
            title: 'Material Dialog',
            content: 'This is content text of material alert'),
        child: Text("Show Dialog", textScaleFactor: 1.5),
      );

  Widget buttonAlert2() => TextButton(
        onPressed: () => materialAlert(context,
            title: 'Warning', content: 'This is content text of warning text'),
        child: Text("Warning", textScaleFactor: 1.5),
      );

  void materialAlert(BuildContext context,
      {String title = '', String content = ''}) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                title,
                textScaleFactor: 1.3,
              ),
              content: Text(
                content,
                textScaleFactor: 1.2,
              ),
              actions: [
                TextButton(onPressed: () {}, child: Text('Cancle')),
                TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text('OK')),
              ],
            ));
  }
}
