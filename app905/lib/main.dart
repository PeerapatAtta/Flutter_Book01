import 'package:flutter/material.dart';

void main() {
  runApp(const App905());
}

class App905 extends StatelessWidget {
  const App905({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  var ast = 'assets/images/';
  var imgWidth = 170.0;
  var padding = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack and Position'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            imgStack(
                caption: 'Polo Shirt',
                imgAsset: ast + 'polo-shirt.png',
                topLeft: topLeft('-5%'),
                topRight: Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                center: Text('')),
            SizedBox(
              height: 20,
            ),
            imgStack(
                caption: 'Suitcase',
                imgAsset: ast + 'suitcase.png',
                topLeft: topLeft('-15%'),
                topRight: Icon(null),
                center: center('Out of Stock')),
            SizedBox(
              height: 20,
            ),
            imgStack(
                caption: 'Shoes',
                imgAsset: ast + 'shoes.png',
                topLeft: Text(''),
                topRight: Image.asset(ast+'new.png',scale: 1.3,),
                center: Text('')),
          ],
        ),
      ),
    );
  }

  Widget imgStack({
    required String caption,
    required String imgAsset,
    required Widget topLeft,
    required Widget topRight,
    required Widget center,
  }) =>
      Stack(
        alignment: Alignment.center,
        children: [
          Positioned(child: imgContainer(imgAsset)),
          Positioned(
            child: topLeft,
            top: 0,
            left: 0,
          ),
          Positioned(
            child: topRight,
            top: 0,
            right: 0,
          ),
          center,
          Positioned(
            child: textCaption(caption),
            left: 0,
            bottom: 0,
          )
        ],
      );

  Widget imgContainer(String imgAsset) => Container(
        padding: EdgeInsets.all(10),
        child: Image.asset(
          imgAsset,
          width: imgWidth,
        ),
        decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      );

  Widget textCaption(String text) => Container(
        child: Text(
          text,
          textScaleFactor: 1.5,
          style: TextStyle(color: Colors.white),
        ),
        width: (imgWidth + (2 * padding) + 2),
        height: 35,
        color: Colors.black38,
        alignment: Alignment.center,
      );

  Widget topLeft(String text) => Container(
        width: 50,
        height: 30,
        child: Text(
          text,
          textScaleFactor: 1.0,
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.red,
        alignment: Alignment.center,
      );

  Widget center(String text) => Container(
        child: Text(
          text,
          textScaleFactor: 0.7,
          style: TextStyle(color: Colors.white),
        ),
        width: 60,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
      );
}
