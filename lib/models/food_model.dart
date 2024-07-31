import 'package:flutter/material.dart';

class CardModel {
  final String price;
  final String foodImg;
  final String foodName;
  final Color cardColor;

  CardModel({
    this.cardColor = Colors.white,
    required this.price,
    required this.foodImg,
    required this.foodName,
  });
}
