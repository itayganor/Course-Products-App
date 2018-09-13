import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Hero(
            tag: 'product-hero-' + index.toString(),
            child: Image.asset(products[index]['image']),
          ),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('details'),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => ProductPage(
                              products[index]['title'],
                              products[index]['image'],
                              index,
                            ),
                      ),
                    ).then((bool value) {
                      if (value) {
                        deleteProduct(index);
                      }
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (products.length == 0) {
      return Center(
        child: Text('no products!'),
      );
    }

    return ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    );
  }
}
