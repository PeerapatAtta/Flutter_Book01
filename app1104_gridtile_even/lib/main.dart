import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const App1104());
}

class App1104 extends StatelessWidget {
  const App1104({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var rnd = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.build'),
      ),
      body: GridView.builder(
        itemCount: 7,
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: buildGridTile(context, index + 1),
        ),
      ),
    );
  }

  Widget buildGridTile(BuildContext ctx, int index) => GridTile(
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          title: Text(
            'Product $index',
            textScaleFactor: 1.3,
          ),
          subtitle: Text('\$${50 + rnd.nextInt(200)}'),
          trailing: InkWell(
            child: Icon(
              Icons.zoom_in,
              size: 32,
              color: Colors.white,
            ),
            onTap: () => {alert(ctx, 'Open product $index')},
          ),
        ),
        child: Image.network(
          'https://picsum.photos/250?random=$index',
          fit: BoxFit.cover,
        ),
      );

  void alert(BuildContext ctx, String msg) => showDialog(
        context: ctx,
        builder: (ctx) => AlertDialog(
          content: Text(
            msg,
            textScaleFactor: 1.3,
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: Text(
                  'OK',
                  textScaleFactor: 1.3,
                ))
          ],
        ),
      );
}
