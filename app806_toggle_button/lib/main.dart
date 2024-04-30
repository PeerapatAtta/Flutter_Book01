import 'package:flutter/material.dart';

void main() {
  runApp(App806());
}

class App806 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _idx = 0;
  var _tgbSelected = <bool>[true, false, false];
  var _bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToggleButtons'),
      ),
      body: Container(
          color: _bgColor,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text('Background Color'),
                SizedBox(
                  height: 10,
                ),
                toggleButton(),
              ],
            ),
          )),
    );
  }

Widget toggleButton() => ToggleButtons(
        children: [
          Text('  White  ', textScaleFactor: 1.5),
          Text('  Black  ', textScaleFactor: 1.5),
          Text('  Light Grey  ', textScaleFactor: 1.5),
        ],
        isSelected: _tgbSelected,
        borderRadius: BorderRadius.circular(10),
        borderColor: Colors.cyan,
        selectedBorderColor: Colors.cyan,
        selectedColor: Colors.white,
        color: Colors.blue,
        fillColor: Colors.green,
        borderWidth: 2,
        onPressed: (index) => setState(() {
          _tgbSelected[index] = true;
          _tgbSelected[_idx] = false;
          _idx = index;
          if (index == 0) {
            _bgColor = Colors.white;
          } else if (index == 1) {
            _bgColor = Colors.black;
          } else if (index == 2) {
            _bgColor = Colors.black12;
          }
        })
  );
  
}
