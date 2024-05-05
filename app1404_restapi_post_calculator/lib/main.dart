import 'package:app1404_restapi_post_calculator/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1404());
}

class App1404 extends StatelessWidget {
  const App1404({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<Map<String, dynamic>> calc;
  num _num1 = 0;
  num _num2 = 0;
  num _result = 0;
  var _op = '';
  var _apiCalling = true;

  @override
  void initState() {
    super.initState();
    calc = apiCalculate();
    calc.then((value) => setState(() {
          _num1 = value['num1'];
          _num2 = value['num2'];
          _op = value['op'];
          _result = value['result'];
          _apiCalling = false;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App1404/REST API/POST/Calculator'),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top: 50),
        child: (_apiCalling
            ? CircularProgressIndicator()
            : Text(
                '$_num1 $_op $_num2 = $_result',
                textScaleFactor: 2.0,
              )),
      ),
    );
  }
}
