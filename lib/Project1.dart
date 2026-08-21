import 'package:flutter/material.dart';

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

final List<Product> products = [
    Product(name: 'ปากกา', price: 15.0),
    Product(name: 'หนังสือ', price: 250.0),
    Product(name: 'ยางลบ', price: 10.0),
];

class Nvg1 extends StatelessWidget {
  const Nvg1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('รายการสินค้า'),
      ),
      body: ListView.builder(
        itemCount: products.length, 
        itemBuilder : (context, i) => ListTile(
            title:  Text(products[i].name),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => DetailPage(product: products[i]),
                ),
                    ),
                ),
            ),
        );  
    }
}
class DetailPage extends StatelessWidget {
    final Product product ;
    const DetailPage({super.key, required this.product});

    @override 
    Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(product.name)),
        body: Center(child: Text('฿${product.price}')),
    );
}