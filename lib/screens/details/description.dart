import 'package:flutter/material.dart';
import 'package:shopp/models/Product.dart';

import '../../constants.dart';


class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top:kDefaultPaddin),
    child: Text(product.description,
    style: TextStyle(height: 1.5),),);
  }
}

