import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  Function updateStatus, getStatus;
  MemberPage({
    required this.updateStatus,
    required this.getStatus,
  });

  @override
  State<MemberPage> createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  @override
  Widget build(BuildContext context) {
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
          widget.updateStatus(!widget.getStatus());
          setState(() {
            widget.getStatus();
          });
        },
        child: Text(
          (!widget.getStatus() ? 'Login' : 'Logout'),
          textScaleFactor: 1.5,
        ),
        style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.grey)),
      );

  Widget btnBack(BuildContext ctx) => TextButton(
    onPressed: ()=>Navigator.pop(ctx), 
    child: Text('<< Back',textScaleFactor: 1.5,),
  );
}
