import 'package:flutter/material.dart';
import 'package:shopp/constants.dart';
import 'package:shopp/models/Product.dart';
import 'package:shopp/screens/details/color_and_size.dart';
import 'package:shopp/screens/details/product_title_with_image.dart';

import 'add_item_to_cart.dart';
import 'counter_with_favorite_button.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.36),
                  padding: EdgeInsets.only(
                      right: kDefaultPaddin,
                      top: size.height * 0.12,
                      left: kDefaultPaddin),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin/2),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin/2),
                      CounterWithFavoriteButton(),
                      SizedBox(height: kDefaultPaddin/6),
                      AddItemToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}