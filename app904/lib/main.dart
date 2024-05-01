import 'package:flutter/material.dart';

void main() {
  runApp(const App904());
}

class App904 extends StatelessWidget {
  const App904({super.key});

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
        title: Text('Row and Column'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset('assets/images/fruit.jpg'),
            SizedBox(
              height: 15,
            ),
            column2(),
            SizedBox(
              height: 15,
            ),
            column3(),
            SizedBox(
              height: 15,
            ),
            column4(),
          ],
        ),
      ),
    );
  }

  Widget column2() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Flutter Fruit',
                textScaleFactor: 1.5,
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              Text(
                'Eating and coding',
                textScaleFactor: 1.2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Text('999')
            ],
          )
        ],
      );

  Widget column3() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.thumb_up,
                color: Colors.blue,
              ),
              Text('Like')
            ],
          ),
          Column(children: [
            Icon(
              Icons.share,
              color: Colors.blue,
            ),
            Text('Share')
          ]),
          Column(children: [
            Icon(
              Icons.reply,
              color: Colors.blue,
            ),
            Text('Reply')
          ]),
        ],
      );

  Widget column4() => Container(
        alignment: Alignment.centerLeft,
        child: Text(
            'Proident nostrud officia duis nulla voluptate enim aliqua duis qui dolore minim est. Elit eiusmod laboris excepteur dolor id cillum officia eiusmod elit. Officia deserunt deserunt laborum commodo proident tempor.'),
      );
}
