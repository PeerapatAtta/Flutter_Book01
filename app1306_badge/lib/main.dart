import 'package:app1306_badge/alert.dart';
import 'package:app1306_badge/cart.dart';
import 'package:app1306_badge/home.dart';
import 'package:app1306_badge/menu.dart';
import 'package:app1306_badge/shared.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

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
  int _navBarIndex = 0;
  int _cartItemsCount = 0;
  int _alertCount = 0;

  @override
  Widget build(BuildContext context) {
    Share.addCart = () {
      setState(() {
        _cartItemsCount++;
      });
    };

    Share.removeCart = () {
      setState(() {
        if (_cartItemsCount > 0) {
          _cartItemsCount--;
        }
      });
    };

    Share.addAlert = () {
      setState(() {
        _alertCount++;
      });
    };

    Share.RemoveAlert = () {
      setState(() {
        if (_alertCount > 0) {
          _alertCount--;
        }
      });
    };

    var pages = <Widget>[HomePage(), CartPage(), AlertPage(), MenuPage()];

    return Scaffold(
      body: pages[_navBarIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.white,
        currentIndex: _navBarIndex,
        items: bottomNavItems(),
        onTap: (index) => setState(() {
          _navBarIndex = index;
        }),
      ),
    );
  }

  List<BottomNavigationBarItem> bottomNavItems() {
    var itemIcons = [
      Icons.home,
      Icons.shopping_cart,
      Icons.notifications,
      Icons.menu,
    ];
    var itemLabels = [
      'Home',
      'Cart',
      'Alert',
      'Menu',
    ];
    var _badges = [0, _cartItemsCount, _alertCount, 0];

    return List.generate(
        itemIcons.length,
        (index) => BottomNavigationBarItem(
              icon: buildBadge(_badges[index], itemIcons[index]),
              label: itemLabels[index],
            ));
  }

  Widget buildBadge(dynamic count, IconData icn) {
    var showBadge = false;

    if (count > 0) {
      showBadge = true;
    }

    return badges.Badge(
      child: Icon(
        icn,
        color: Colors.white,
      ),
      badgeContent: Text(
        '$count',
        style: TextStyle(color: Colors.white),
      ),
      showBadge: showBadge,
      badgeStyle: badges.BadgeStyle(badgeColor: Colors.orange),
      position: badges.BadgePosition.topEnd(),
      badgeAnimation: badges.BadgeAnimation.fade(),
    );
  }
}
