import 'package:flutter/material.dart';
import 'package:fruit_hub/features/models/food_model.dart';
import 'package:fruit_hub/features/Home/widgets/food_card.dart';

// ignore: must_be_immutable
class CardFoodListview extends StatelessWidget {
  CardFoodListview({super.key});

  List<CardModel> foodModel = [
    CardModel(
        price: '2,000',
        foodImg: 'assets/food1.png',
        foodName: 'Honey lime combo',
        ingredient: 'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint'
        ),
    CardModel(
        price: '8,000',
        foodImg: 'assets/food2.png',
        foodName: 'Berry mango combo',
         ingredient: 'Blueberries, Strawberries, Mango, Greek Yogurt, Honey, Granola',
         ),
    CardModel(
        price: '3,000',
        foodImg: 'assets/food3.png',
        foodName: 'Golden brown waffle',
        ingredient: 'Whole Wheat Flour, Eggs, Almond Milk, Baking Powder, Maple Syrup, Fresh Berries.',
        ),
    CardModel(
        price: '5,000',
        foodImg: 'assets/food4.png',
        foodName: 'Milk & pumpkin seeds',
        ingredient: 'Almond Milk, Pumpkin Seeds, Chia Seeds, Honey, Cinnamon.',),
    CardModel(
        price: '6,000',
        foodImg: 'assets/food5.png',
        foodName: 'Berries & Muesli bowl',ingredient: 'Rolled Oats, Blueberries, Raspberries, Almond Milk, Honey, Chopped Almonds.',),
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
