import 'package:flutter/material.dart';

void main() {
  runApp(App804());
}

class App804 extends StatelessWidget {
  const App804({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App804'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            GestureDetector(
                onTap: () {}, child: Image.asset('assets/images/flutter.png')),
            Text('Flutter is muti-platfrom frame work.'),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/flutlab.png',
              width: 150,
            ),
            Text('FlutLab is online Flutter IDE Application.'),
            SizedBox(
              height: 10,
            ),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/2019_Toyota_Corolla_Icon_Tech_VVT-i_Hybrid_1.8.jpg/1200px-2019_Toyota_Corolla_Icon_Tech_VVT-i_Hybrid_1.8.jpg')
          ],
        ),
      ),
    );
  }
}
