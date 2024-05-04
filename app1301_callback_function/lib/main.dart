import 'package:app1301_callback_function/member_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1301());
}

class App1301 extends StatelessWidget {
  const App1301({super.key});

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
  bool _status = false;
  var _icon = Icons.lock;
  var _text = 'Please Login';

  void updateStatus(value) {
    setState(() {
      if (!value) {
        _icon = Icons.lock;
        _text = 'Please Login';
      } else {
        _icon = Icons.check;
        _text = 'Already Login';
      }
      _status = value;
    });
  }

  bool getStatus() {
    return _status;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(_icon, size: 64),
            Text(
              '$_text',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnMemberPage(),
          ],
        ),
      ),
    );
  }

  Widget btnMemberPage() => TextButton(
    onPressed: ()=>Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>MemberPage(
        updateStatus: updateStatus,
        getStatus: getStatus,
      ))
    ), 
    child: Text('Member Page >>',textScaler: TextScaler.linear(1.5),),
  );
}
