import 'package:flutter/material.dart';

void main() {
  runApp(const App1101());
}

class App1101 extends StatelessWidget {
  const App1101({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var captions = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridVIew')),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        padding: EdgeInsets.all(15),
        children: gridChildren(),
      ),
    );
  }

  List<Widget> gridChildren() => List.generate(
      captions.length,
      (i) => Container(
            child: Text(
              captions[i],
              textScaleFactor: 1.5,
            ),
            color: Colors.black12,
            alignment: Alignment.center,
          ));
}
