import 'package:app1203_recieve_data/page2.dart';
import 'package:app1203_recieve_data/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1203());
}

class App1203 extends StatelessWidget {
  const App1203({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Naviagtor'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Home Page',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnPage2(context),
            SizedBox(
              height: 30,
            ),
            btnPage3(context),
          ],
        ),
      ),
    );
  }

  Widget btnPage2(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.push(
              ctx, MaterialPageRoute(builder: (ctx) => Page2(id: 999)))
          .then((value) => alert(ctx, 'Recieve Data: $value')),
      child: Text(
        'Go to Page 2 >>',
        //textScaleFactor: 1.5,
        textScaler: TextScaler.linear(1.5),
      ));

  Widget btnPage3(BuildContext ctx) => TextButton(
      onPressed: () => Navigator.push(
              ctx,
              MaterialPageRoute(
                  builder: (ctx) => Page3(
                        a: 555,
                        b: 'hahahah',
                      ))).then((value) {
            var v = value ?? [0, 'zero'];
            var v0 = v[0];
            var v1 = v[1];
            alert(ctx, 'Data Recieve\n [$v0,$v1]');
          }),
      child: Text(
        'Go to Page 3 >>',
        textScaleFactor: 1.5,
      ));

  void alert(BuildContext ctx, String msg) => showDialog(
    context: ctx, 
    builder: (ctx)=>AlertDialog(
      content: Text(msg,textScaleFactor: 1.3,),
      actions: [
        TextButton(
          onPressed: ()=>Navigator.of(ctx).pop(), 
          child: Text('OK',textScaleFactor: 1.3,)),
      ],
    ),
  );
}
