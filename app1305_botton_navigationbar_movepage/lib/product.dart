import 'package:app1305_botton_navigationbar_movepage/product_detail.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Product Page',
              textScaleFactor: 2.0,
            ),
            SizedBox(
              height: 60,
            ),
            btnDetail(context),
          ],
        ),
      ),
    );
  }

  Widget btnDetail(BuildContext ctx) => TextButton(
        onPressed: () => Navigator.push(
            ctx, MaterialPageRoute(builder: (context) => ProductDetailPage())),
        child: Text(
          'Product Detail',
          textScaleFactor: 1.5,
        ),
      );
}
