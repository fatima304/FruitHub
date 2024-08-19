import 'package:flutter/material.dart';

class CardModel {
  final String price;
  final String foodImg;
  final String foodName;
  final Color cardColor;
  final String ingredient;

  CardModel({
    this.cardColor = Colors.white,
    required this.price,
    required this.foodImg,
    required this.foodName,
    required this.ingredient,
  });
}

List<CardModel> foodModel = [
  CardModel(
      price: '2,000',
      foodImg: 'assets/1.png',
      foodName: 'Honey lime combo',
      ingredient:
          'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint'),
  CardModel(
    price: '8,000',
    foodImg: 'assets/2.png',
    foodName: 'Berry mango combo',
    ingredient:
        'Blueberries, Strawberries, Mango, Greek Yogurt, Honey, Granola',
  ),
  CardModel(
    price: '3,000',
    foodImg: 'assets/food3.png',
    foodName: 'Golden brown waffle',
    ingredient:
        'Whole Wheat Flour, Eggs, Almond Milk, Baking Powder, Maple Syrup, Fresh Berries.',
  ),
  CardModel(
    price: '5,000',
    foodImg: 'assets/food4.png',
    foodName: 'Milk & pumpkin seeds',
    ingredient: 'Almond Milk, Pumpkin Seeds, Chia Seeds, Honey, Cinnamon.',
  ),
  CardModel(
    price: '6,000',
    foodImg: 'assets/food5.png',
    foodName: 'Berries & Muesli bowl',
    ingredient:
        'Rolled Oats, Blueberries, Raspberries, Almond Milk, Honey, Chopped Almonds.',
  ),
];
