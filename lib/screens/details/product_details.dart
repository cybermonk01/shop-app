import 'package:flutter/material.dart';
import 'package:shopp/constants.dart';
import 'package:shopp/models/Product.dart';

import 'package:shopp/screens/details/body.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product:product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(Icons.search, color: Colors.white), onPressed: null),
        IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: null),
        SizedBox(width: kDefaultPaddin / 2),
      ],
    );
  }
}
