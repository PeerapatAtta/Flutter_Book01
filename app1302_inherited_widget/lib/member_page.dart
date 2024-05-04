import 'package:app1302_inherited_widget/share_data.dart';
import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  var shareData;
  bool _status = false;

  @override
  Widget build(BuildContext context) {
    shareData = ShareData.of(context);
    _status = shareData.status;

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

  Widget btnLogin(BuildContext ctx) => OutlinedButton(
        onPressed: () {
          setState(() {
            shareData.updateStatus(!_status);
          });
        },
        child: Text(
          (!_status) ? 'Login' : 'Logout',
          textScaleFactor: 1.5,
        ),
        style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
      );

  Widget btnBack(BuildContext ctx) => TextButton(
        onPressed: () => Navigator.pop(ctx),
        child: Text(
          '<< Back',
          textScaleFactor: 1.5,
        ),
      );
}
