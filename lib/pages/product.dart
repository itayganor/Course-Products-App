import 'dart:async';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int index;

  ProductPage(this.title, this.imageUrl, this.index);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            Hero(
              tag: 'product-hero-'+index.toString(),
              child: Image.asset(imageUrl),
            ),
            Container(
              padding: EdgeInsets.all(36.0),
              child: Text(title),
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text('DELETE'),
              onPressed: () => Navigator.pop(context, true),
            ),
          ],
        ),
      ),
    );
  }
}
