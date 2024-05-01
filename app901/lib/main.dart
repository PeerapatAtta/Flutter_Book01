import 'package:flutter/material.dart';

void main() {
  runApp(const App901());
}

class App901 extends StatelessWidget {
  const App901({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text('Container'),
      ),
      body: Center(
        child: Column(
          children: [
            container1(),
            container2(),
            container3(),
            container4(),
          ],
        ),
      ),
    );
  }

  Widget container1() => Container(
        width: 250,
        height: 100,
        margin: EdgeInsets.only(top:20),
        color: Colors.black12,
        child: Text('No Decoration',textScaleFactor: 1.5,),
        alignment: Alignment.center,
  );

  Widget container2() => Container(
        width: 250,
        height: 100,
        margin: EdgeInsets.only(top:10),
        //color: Colors.black12,
        child: Text('Circular(30)',textScaleFactor: 1.5,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(30)),
  );

  Widget container3() => Container(
        width: 250,
        height: 100,
        margin: EdgeInsets.only(top:10),
        //color: Colors.black12,
        child: Text('Elliptical(100,300)',textScaleFactor: 1.5,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid
          ),
          borderRadius: BorderRadius.all(Radius.elliptical(100, 300))
        ),
  );

  Widget container4() => Container(
        width: 150,
        height: 150,
        margin: EdgeInsets.only(top:10),
        //color: Colors.black12,
        child: Text('Circle',textScaleFactor: 1.5,),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black12,
          border: Border.all(
            color: Colors.green,
            width: 2,
          ),
          shape: BoxShape.circle,
        ),
  );


}
