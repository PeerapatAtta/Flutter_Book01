import 'package:flutter/material.dart';

void main() {
  runApp(const App1304());
}

class App1304 extends StatelessWidget {
  const App1304({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App1304/ButtonNavigationBar'),
      ),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _navBarIndex,
        items: bottonNavItems(),
        onTap: (index) => setState(() {
          _navBarIndex = index;
        }),
      ),
    );
  }

  List<BottomNavigationBarItem> bottonNavItems() {
    var itemIcons = [
      Icons.home,
      Icons.shopping_cart,
      Icons.person,
      Icons.help,
    ];
    var itemLabels = [
      'Home',
      'Product',
      'Member',
      'Help',
    ];
    var bgColors = [
      Colors.deepPurple,
      Colors.indigo,
      Colors.teal,
      Colors.brown,
    ];

    return List.generate(
        itemIcons.length, (index) => BottomNavigationBarItem(
          icon: Icon(itemIcons[index]),
          label: itemLabels[index],
          backgroundColor: bgColors[index],
        )
    );
  }
}
