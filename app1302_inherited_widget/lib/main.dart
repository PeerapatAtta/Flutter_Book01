import 'package:app1302_inherited_widget/member_page.dart';
import 'package:app1302_inherited_widget/share_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ShareData(child: App1302()));
}

class App1302 extends StatelessWidget {
  const App1302({super.key});

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
  //bool _status = false;
  var _icon = Icons.lock;
  var _text = 'Please Login';

  @override
  Widget build(BuildContext context) {
    var shareData = ShareData.of(context);

    shareData.updateStatus = (value) {
      setState(() {
        shareData.status = value;
        if (!value) {
          _icon = Icons.lock;
          _text = 'Please Login';
        } else {
          _icon = Icons.check;
          _text = 'Already Login';
        }
      });
    };

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
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => MemberPage())),
        child: Text(
          'Member Page >>',
          textScaler: TextScaler.linear(1.5),
        ),
      );
}
