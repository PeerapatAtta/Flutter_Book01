import 'package:flutter/material.dart';

void main() {
  runApp(App805());
}

class App805 extends StatelessWidget {
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
  var _fontWeight = FontWeight.normal;
  var _fontStyle = FontStyle.normal;
  var _switchWeight = false;
  var _switchStyle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App805')),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              'Fultter',
              textScaleFactor: 5.0,
              style: TextStyle(fontWeight: _fontWeight, fontStyle: _fontStyle),
            ),
            SizedBox(
              height: 30,
            ),
            rowSwitchWeight(),
            SizedBox(
              height: 30,
            ),
            rowSwitchStyle(),
          ],
        ),
      ),
    );
  }

  Widget rowSwitchWeight() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Bold',
            textScaleFactor: 1.5,
          ),
          Switch(
              value: _switchWeight,
              onChanged: (isOn) => setState(() {
                    _switchWeight = isOn;
                    if (isOn) {
                      _fontWeight = FontWeight.bold;
                    } else {
                      _fontWeight = FontWeight.normal;
                    }
                  }))
        ],
      );

  Widget rowSwitchStyle() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Italic',
            textScaleFactor: 1.5,
          ),
          Switch(
              value: _switchStyle,
              onChanged: (isOn) => setState(() {
                    _switchStyle = isOn;
                    _fontStyle = isOn ? FontStyle.italic : FontStyle.normal;
                  }))
        ],
      );
}
