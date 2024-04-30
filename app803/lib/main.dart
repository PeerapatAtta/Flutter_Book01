import 'package:flutter/material.dart';

void main() => runApp(App803());

class App803 extends StatelessWidget {
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
  var _ctrlEmail = TextEditingController();
  var _ctrlPswd = TextEditingController();
  var _ctrlName = TextEditingController();
  String _str = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App 803'),
      ),
      body: Center(
        child: SizedBox(
          width: 350,
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            textFieldEmail(),
            SizedBox(
              height: 20,
            ),
            textFieldPswd(),
            SizedBox(
              height: 20,
            ),
            textFieldName(),
            SizedBox(
              height: 40,
            ),
            Text(
              '$_str',
              textScaleFactor: 1.3,
            ),
          ]),
        ),
      ),
    );
  }

  OutlineInputBorder outlineBorder() =>
      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2));

  TextStyle textStyle() => TextStyle(
        color: Colors.indigo,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      );

  Widget textFieldEmail() => TextField(
        controller: _ctrlEmail,
        decoration: InputDecoration(border: outlineBorder(), hintText: 'Email'),
        keyboardType: TextInputType.emailAddress,
        style: textStyle(),
        onChanged: (text) => updateText(),
      );

  Widget textFieldPswd() => TextField(
        controller: _ctrlPswd,
        decoration:
            InputDecoration(border: outlineBorder(), hintText: 'Password'),
        obscureText: true,
        style: textStyle(),
        onChanged: (text) => updateText(),
      );

  Widget textFieldName() => TextField(
        controller: _ctrlName,
        decoration: InputDecoration(border: outlineBorder(), hintText: 'Name'),
        style: textStyle(),
        onChanged: (text) => updateText(),
      );

  void updateText() => setState(() {
        _str = 'Email = ${_ctrlEmail.value.text}\n';
        _str += 'Password = ${_ctrlPswd.value.text}\n';
        _str += 'Name = ${_ctrlName.value.text}\n';
      });
}
