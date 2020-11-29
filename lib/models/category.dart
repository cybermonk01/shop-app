import 'package:shopp/models/products.dart';

class Category {
  int categoryId;
  String categoryName;
  String categoryDesc;
  int parent;
  var image;

  Category({
    this.categoryDesc,
    this.categoryName,
    this.categoryId,
    this.parent,
    this.image,
  });

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['id'];
    categoryName = json['categoryName'];
    categoryDesc = json['categoryDesc'];
    parent = json['parent'];
    image = json['image'] != null ? new Img.fromJson(json['image']) : null;
  }
}

class Img {
  String url;

  Img({this.url});

  Img.fromJson(Map<String, dynamic> json) {
    url = json['src'];
  }
}
