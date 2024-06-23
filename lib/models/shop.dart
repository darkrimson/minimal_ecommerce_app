import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/models/product.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
      name: "Product 1",
      description: "Item Description",
      price: 99.99,
      image:
          "https://likewot.ru/wp-content/uploads/f/d/d/fdde9aeef23efff6812c002e025d27f5.jpeg",
    ),
    Product(
      name: "Product 2",
      description: "Item Description",
      price: 99.99,
      image:
          "https://img.alicdn.com/imgextra/i4/TB19h5CLVXXXXX_XFXXXXXXXXXX_!!0-item_pic.jpg",
    ),
    Product(
        name: "Product 3",
        description: "Item Description",
        price: 99.99,
        image:
            "https://luckyretail.com/Uploadfile/201810112/177753A1/177753A1-1.jpg"),
    Product(
      name: "Product 4",
      description: "Item Description",
      price: 99.99,
      image: "https://cdn1.ozone.ru/s3/multimedia-b/6896116451.jpg",
    ),
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void deleteFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
