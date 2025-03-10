import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Product {
  final String image, title, description,id;
  final int price, size;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}
void addProduct(Product product){
const url ='https://shopp-4ad13.firebaseio.com/products.json';
http.post(url,body: json.encode(
  {
   'title': product.title,
  'description': product.description,
  'price': product.price,
  'image': product.image,
  'size': product.size,
  'color': product.color,


  }
));

final newProduct = Product(
  title: product.title,
  description: product.description,
  price: product.price,
  image: product.image,
  size: product.size,
  color: product.color,
  id: DateTime.now().toString(),

);
products.add(newProduct);
}

List<Product> products = [
  Product(
      id: 'a',
      title: "Office Code",
      price: 274,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: '2',
      title: "Belt Bag",
      price: 25665,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: '3',
      title: "Hang Top",
      price: 2554,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: '4',
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: '5',
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: '6',
    title: "Office Code",
    price: 286546,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
