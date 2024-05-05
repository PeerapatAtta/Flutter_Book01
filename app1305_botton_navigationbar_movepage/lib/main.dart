import 'package:app1305_botton_navigationbar_movepage/help.dart';
import 'package:app1305_botton_navigationbar_movepage/home.dart';
import 'package:app1305_botton_navigationbar_movepage/member.dart';
import 'package:app1305_botton_navigationbar_movepage/product.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App1305());
}

class App1305 extends StatelessWidget {
  const App1305({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pages = <Widget>[HomePage(), ProductPage(), MemberPage(), HelpPage()];
  int _navItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_navItemIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _navItemIndex,
        items: bottomNavItems(),
        onTap: (index) => setState(() {
          _navItemIndex = index;
        }),
      ),
    );
  }

  List<BottomNavigationBarItem> bottomNavItems() {
    var navItemIcons = [
      Icons.home,
      Icons.shopping_cart,
      Icons.person,
      Icons.help,
    ];
    var navItemLabels = [
      'Home',
      'Product',
      'Person',
      'Help',
    ];
    var bgColors = [
      Colors.deepPurple,
      Colors.indigo,
      Colors.teal,
      Colors.brown,
    ];
    var len = navItemIcons.length;

    return List.generate(
        len,
        (index) => BottomNavigationBarItem(
              icon: Icon(navItemIcons[index]),
              label: navItemLabels[index],
              backgroundColor: bgColors[index],
            ));
  }
}
