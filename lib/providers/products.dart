import 'package:flutter/material.dart';
import 'package:myshop/models/product.dart';

class Products extends ChangeNotifier {
  final List<ProductModel> _items = [
    ProductModel(
      id: 'p1',
      title: 'Yellow Shoe',
      decription: 'A yellow shoe - it is pretty yellow',
      imageUrl: 'asset/image/1.png',
      price: 15.21,
    ),
    ProductModel(
      id: 'p2',
      title: 'Yellow Shoe',
      decription: 'A yellow shoe - it is pretty yellow',
      imageUrl: 'asset/image/2.png',
      price: 15.21,
    ),
    ProductModel(
      id: 'p3',
      title: 'Yellow Shoe',
      decription: 'A yellow shoe - it is pretty yellow',
      imageUrl: 'asset/image/3.png',
      price: 15.21,
    ),
    ProductModel(
      id: 'p4',
      title: 'Yellow Shoe',
      decription: 'A yellow shoe - it is pretty yellow',
      imageUrl: 'asset/image/4.png',
      price: 15.21,
    ),
    ProductModel(
      id: 'p5',
      title: 'Yellow Shoe',
      decription: 'A yellow shoe - it is pretty yellow',
      imageUrl: 'asset/image/5.png',
      price: 15.21,
    ),
  ];

  List<ProductModel> get item {
    return [..._items];
  }

  ProductModel findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  void addProduct() {
    notifyListeners();
  }
}
