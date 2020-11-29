import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:shopp/widgets/widget_home_products.dart';
import 'package:shopp/widgets/widget_home_categories.dart';

import '../config.dart';


class DashBoard extends StatefulWidget {

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.white,
            child: ListView(
              children: [
                imageCarousel(context),
                WidgetCategories(),
                WidgetHomeProducts(labelName:'nayaoffer',tagName: Config.nayaofferTagId, )
              ],
            )));
  }

  Widget imageCarousel(BuildContext context) {
    return new Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child:new  Carousel(
            overlayShadow: false,
            borderRadius: true,
            boxFit: BoxFit.none,
            autoplay: true,
            dotSize: 4.0,
            images: [
              FittedBox(
                fit: BoxFit.fill,
                child:Image.network('https://unsplash.com/photos/4nulm-JUYFo'),
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Image.network('https://unsplash.com/photos/4nulm-JUYFo'),
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Image.network('https://unsplash.com/photos/N6Rfv9z1HH0'),
              ),
              FittedBox(
                fit: BoxFit.fill,
                child: Image.network('https://unsplash.com/photos/Z3tc0Bfv0c4'),
              ),
            ])
            );
  }
}
