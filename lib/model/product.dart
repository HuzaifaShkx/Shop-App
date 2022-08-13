import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product(this.image, this.title, this.description, this.price, this.size,
      this.id, this.color);
}

List<Product> products = [
  Product("assets/images/bag_1.png", "Office code", dummyText, 200, 7, 1,
      Color(0xFF3DB2AE)),
  Product("assets/images/bag_2.png", "Belt Bag", dummyText, 350, 8, 2,
      Color(0xFFD3A984)),
  Product("assets/images/bag_3.png", "Beltless Bag", dummyText, 410, 13, 3,
      Color(0xFF3DB2AE)),
  Product("assets/images/bag_4.png", "Old Fashion", dummyText, 500, 15, 4,
      Color(0xFFE6B398)),
  Product("assets/images/bag_5.png", "Office Code", dummyText, 520, 10, 5,
      Color(0xFFFB7883)),
  Product("assets/images/bag_6.png", "Modern Fashion", dummyText, 520, 10, 5,
      Color(0xFFFB7883)),
];

String dummyText =
    "That on flung no velvet stock my of chamber suddenly. Purple of fowl fancy all of and. I by is.";
