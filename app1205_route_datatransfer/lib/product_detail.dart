import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  ProductDetail({super.key});
  var id = 0;
  var price = 0;

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    id = args['id'];
    price = args['price'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://picsum.photos/' + 'id/${id * 100}/1000',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            column2(),
            SizedBox(
              height: 15,
            ),
            column3(),
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
                'Item $id',
                textScaleFactor: 1.5,
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$$price',
                textScaleFactor: 1.2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.add_shopping_cart,
                color: Colors.green,
                size: 36,
              ),
            ],
          ),
        ],
      );

  Widget column3() => Container(
    alignment: Alignment.centerLeft,
    child:Text('Deserunt cillum in adipisicing ex exercitation. Consectetur qui ut id minim reprehenderit dolor. Anim ad est do est magna Lorem do id voluptate culpa qui proident in tempor. Non ad anim sunt culpa. Laboris tempor aliquip laboris ut nostrud voluptate ex fugiat quis.'),
  );
}
