import 'package:app1401_restapi/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1401());
}

class App1401 extends StatelessWidget {
  const App1401({super.key});

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
  late Future<Map<String, dynamic>> todo;
  var _text = '';
  var _apiCalling = true;

  @override
  Widget build(BuildContext context) {
    todo = apiGetTodo();
    todo.then((value) {
      setState(() {
        _text = 'id: 1\n';
        _text += 'title: ${value['title']}\n';
        _text += 'completed: ${value['completed']}\n';
        _apiCalling = false;
      });
    });

    return Scaffold(
      appBar: AppBar(title: Text('App1401/REST API'),),
      body: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
        child: (_apiCalling?CircularProgressIndicator():Text(_text,textScaleFactor: 1.5,)),
      ),
    );
  }
}
