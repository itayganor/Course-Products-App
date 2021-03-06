import 'package:flutter/material.dart';

import '../product_manager.dart';
import './products_admin.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: Text('Manage Products'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ProductsAdminPage()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('My First App :)'),
      ),
      body: ProductManager(),
    );
  }
}
