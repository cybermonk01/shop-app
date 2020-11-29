import 'package:flutter/material.dart';

import 'cart_counter.dart';


class CounterWithFavoriteButton extends StatelessWidget {
  const CounterWithFavoriteButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:<Widget>[
        CartCounter(),
        Container(
          padding: EdgeInsets.all(5),
        height:32,
        width: 32,
        decoration: BoxDecoration(
           color: Colors.red,
           shape:BoxShape.circle, 
        ),
       
       
        child: Icon(Icons.favorite  ,color: Colors.white)),
        
        ]);
  }
}
