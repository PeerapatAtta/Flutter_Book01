import 'package:app1303_static_class/share.dart';
import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  bool _status = false;

  @override
  Widget build(BuildContext context) {
    _status = Share.status;

    return Scaffold(
      appBar: AppBar(
        title: Text('Member Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            btnLogin(context),
            SizedBox(
              height: 30,
            ),
            btnBack(context),
          ],
        ),
      ),
    );
  }

  Widget btnLogin(BuildContext ctx) => ElevatedButton(
        onPressed: () {
          setState(() {
            Share.updateStatus(!_status);
          });
        },
        child: Text(
          (!_status) ? 'Login' : 'Logout',
          textScaleFactor: 1.5,
        ),        
      );

  Widget btnBack(BuildContext ctx) => TextButton(
        onPressed: () => Navigator.pop(ctx),
        child: Text(
          '<< Back',
          textScaleFactor: 1.5,
        ),
      );
}
