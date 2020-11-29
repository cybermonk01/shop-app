import 'package:flutter/material.dart';
import 'package:shopp/models/Product.dart';

import '../../constants.dart';



class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:kDefaultPaddin),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'baba ji ka jhola',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
              color: Colors.white),
          ),
       
          Row(
           
            children: <Widget>[
                 
              RichText(
                text: TextSpan(children: [
                  
                  TextSpan(text: 'Price\n',
                  style: Theme.of(context).textTheme
                        .headline6
                        .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text:'\$${product.price}',
                    style: Theme.of(context).textTheme
                        .headline3
                        .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              SizedBox(width: kDefaultPaddin),
              Expanded(child: Image.asset(product.image,
              fit: BoxFit.fill),
              )
            ],
          )
        ],
      ),
    );
  }
}
