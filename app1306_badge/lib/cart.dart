import 'package:app1306_badge/shared.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            btnAddCart(),
            btnDeleteCart(),
          ],
        ),
      ),
    );
  }

  Widget btnAddCart() => TextButton(
      onPressed: () => Share.addCart(),
      child: Text(
        'Add Cart',
        textScaleFactor: 1.5,
      ));

  Widget btnDeleteCart() => TextButton(
      onPressed: () => Share.removeCart(),
      child: Text(
        'Delete Cart',
        textScaleFactor: 1.5,
      ));
}
