import 'package:flutter/material.dart';
import 'package:shopp/models/Product.dart';

import '../../constants.dart';



class AddItemToCart extends StatelessWidget {
  const AddItemToCart({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container( 
          margin: EdgeInsets.all(kDefaultPaddin),
          height:50,
          width:50,
          decoration: BoxDecoration(
            border: Border.all(color:product.color),

           
          ),
          child: Icon(Icons.add_shopping_cart)
        ),
        Expanded(
                                    child: SizedBox(
            
            height: 50,
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18)
              ),
              color: product.color,
              onPressed: (){}, 
            child: Text('Buy Now'.toUpperCase(),
            style: TextStyle(fontSize: 17,
            color: Colors.white,
              fontWeight: FontWeight.bold,
            ))
          )
          ),
        )
      ],
    );
  }
}

