import 'package:flutter/material.dart';
import 'package:fruit_hub/models/food_model.dart';
import 'package:fruit_hub/features/Home/widgets/food_card.dart';

// ignore: must_be_immutable
class CardFoodListview extends StatelessWidget {
  const CardFoodListview({super.key});
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
