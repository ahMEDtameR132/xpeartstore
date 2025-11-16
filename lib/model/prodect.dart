import 'package:flutter/material.dart';

class Product {
  final String title;
  final String imageUrl;
  final String size;
  final Color color;
  final int quantity;
  final double price;

  Product({
    required this.title,
    required this.imageUrl,
    required this.size,
    required this.color,
    required this.quantity,
    required this.price,
  });
}
