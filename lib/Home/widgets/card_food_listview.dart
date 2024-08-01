import 'package:flutter/material.dart';
import 'package:fruit_hub/models/food_model.dart';
import 'package:fruit_hub/Home/widgets/food_card.dart';

// ignore: must_be_immutable
class CardFoodListview extends StatelessWidget {
  CardFoodListview();


  List<CardModel> foodModel = [
    CardModel(
        price: '2,000',
        foodImg: 'assets/food1.png',
        foodName: 'Honey lime combo'),
    CardModel(
        price: '8,000',
        foodImg: 'assets/food2.png',
        foodName: 'Berry mango combo'),
    CardModel(
        price: '3,000',
        foodImg: 'assets/food3.png',
        foodName: 'Golden brown waffle'),
    CardModel(
        price: '3,000',
        foodImg: 'assets/food4.png',
        foodName: 'Milk & pumpkin seeds'),
    CardModel(
        price: '3,000',
        foodImg: 'assets/food5.jpg',
        foodName: 'Berries & Muesli bowl'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        itemCount: foodModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomFoodCard(cardModel: foodModel[index]);
        },
      ),
    );
  }
}
