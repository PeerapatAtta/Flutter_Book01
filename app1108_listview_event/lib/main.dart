import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const App1108());
}

class App1108 extends StatelessWidget {
  const App1108({super.key});

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
  var rnd = Random();
  var leadingIcons = [
    Icons.star,
    Icons.favorite,
    Icons.wifi,
    Icons.bluetooth,
    Icons.settings,
  ];
  var titleText = [
    'Star',
    'Heart',
    'Wi-Fi',
    'Bluetooth',
    'Gear',
  ];
  var _switchWifi = true;
  var _switchBluetooth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App1108/ListView/Event'),
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20),
        itemCount: titleText.length,
        itemBuilder: (context, index) => buildListItem(context, index),
        separatorBuilder: (context, i) => Divider(
          thickness: 1,
          color: Colors.blueGrey,
          indent: 10,
          endIndent: 10,
        ),
      ),
    );
  }

  Widget buildListItem(BuildContext ctx, int index) => ListTile(
        leading: Icon(
          leadingIcons[index],
          size: 36,
        ),
        title: Text(
          titleText[index],
          textScaleFactor: 1.5,
        ),
        subtitle: Text(
          '\$${10 + rnd.nextInt(50)}',
          textScaleFactor: 1.2,
        ),
        trailing: trailingWidget(ctx, index),
        onTap: () => alert(ctx, 'Open ${titleText[index]}'),
      );

  Widget trailingWidget(BuildContext ctx, int index) {
    var widgets = <Widget>[
      Icon(Icons.arrow_forward_ios),
      InkWell(
        child: Icon(Icons.shopping_cart),
        onTap: () {
          alert(ctx, 'Picked ${titleText[index]}  in to cart');
        },
      ),
      Switch(
        value: _switchWifi,
        onChanged: (isOn) => setState(() {
          _switchWifi = isOn;
          var t = isOn.toString();
          alert(ctx, '${titleText[index]} : $t');
        }),
      ),
      Switch(
        value: _switchBluetooth,
        onChanged: (isOn) => setState(() {
          _switchBluetooth = isOn;
          var t = (isOn) ? 'Open' : 'Close';
          alert(ctx, '${titleText[index]} : $t');
        }),
      ),
      InkWell(
        child: Icon(Icons.shopping_cart),
        onTap: () {
          alert(ctx, 'Picked ${titleText[index]}  in to cart');
        },
      ),
    ];
    return widgets[index];
  }

  void alert(BuildContext ctx,String msg) => showDialog(
    context: ctx, 
    builder: (ctx)=>AlertDialog(
      content: Text(msg,textScaleFactor: 1.3,),
      actions: [TextButton(
        onPressed: ()=>Navigator.of(ctx).pop(), 
        child: Text('OK',textScaleFactor: 1.3,))],
    ),
  );
}
