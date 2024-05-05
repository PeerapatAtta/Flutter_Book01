import 'dart:math';

import 'package:app1402_restapi_randomid/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1402());
}

class App1402 extends StatelessWidget {
  const App1402({super.key});

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
  var _apiCalling = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('App1402/REST API/RandomID'),
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
              child: (_apiCalling
                  ? CircularProgressIndicator()
                  : Text(
                      _text,
                      textScaleFactor: 1.5,
                    )),
            ),
            SizedBox(
              height: 30,
            ),
            btnRandomTodo(),
          ],
        ),
      );

  Widget btnRandomTodo() => TextButton(
      onPressed: () {
        var _todoId = 1 + Random().nextInt(20);
        todo = apiGetTodo(_todoId);

        setState(() {
          _apiCalling = true;
          _text = '';
        });

        todo.then((value) => setState(() {
              _text = 'id: $_todoId\n\n';
              _text += 'title: ${value['title']}\n\n';
              _text += 'completed: ${value['completed']}\n\n';

              _apiCalling = false;
            })
        );
      },
      child: Text(
        'Random Todo',
        textScaleFactor: 1.5,
      ));
}
