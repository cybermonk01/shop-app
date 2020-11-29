import 'dart:convert';
import 'dart:io';
import 'package:shopp/models/products.dart';

import 'models/category.dart';
import 'package:dio/dio.dart';
import 'package:shopp/config.dart';
import 'package:shopp/models/customers.dart';

class APIService {
  Future<bool> createCustomer(CustomerModel model) async {
    var authToken = base64.encode(
      utf8.encode(Config.key + ":" + Config.secret),
    );

    bool ret = false;

    try {
      var response = await Dio().post(Config.url + Config.customerUrl,
          data: model.toJson(),
          options: new Options(headers: {
            HttpHeaders.authorizationHeader: ' Basic $authToken',
            HttpHeaders.contentTypeHeader: 'application/json'
          }));
      if (response.statusCode == 201) {
        ret = true;
      }
    } on DioError catch (error) {
      if (error.response.statusCode == 404) {
        ret = false;
      } else {
        ret = false;
      }
    }
    return ret;
  }

  getCategories() {}
  getProducts(){}
}

Future<List<Category>> getCategories() async {
  List<Category> data = new List<Category>();

  try {
    String url = Config.url +
        Config.categoriesURL +
        '?consumer_key=${Config.key}&consumer_secret=${Config.secret}';
    var response = await Dio().get(url,
        options: new Options(
          headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        ));

    if (response.statusCode == 200) {
      data = (response.data as List)
          .map(
            (i) => Category.fromJson(i),
          )
          .toList();
    }
  } on DioError catch (error) {
    print(error.response);
  }
  return data;
}


Future<List<Products>> getProducts(String tagName) async{
  List<Products> data = new List<Products>();

   try {
    String url = Config.url +
        Config.productsURL +
        '?consumer_key=${Config.key}&consumer_secret=${Config.secret}&tag=$tagName';
  var response= await Dio().get(
    url,
    options: new Options(
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
    ),
  );
  
 if(response.statusCode == 200){
   data= (response.data as List).map((i)=> Products.fromJson(i),).toList();
 }
 }
 on DioError catch(e){
   print(e.response);

 }
 return data;
}

