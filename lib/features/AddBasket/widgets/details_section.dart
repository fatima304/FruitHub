import 'package:flutter/material.dart';
import 'package:fruit_hub/features/AddBasket/widgets/food_amount.dart';
import 'package:fruit_hub/features/AddBasket/widgets/ingredient_section.dart';
import 'package:fruit_hub/features/AddBasket/widgets/order_section.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.price,
    required this.foodName,
    required this.ingredient,
  });
  final String price;
  final String foodName;
  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FoodAmount(
            price: price,
            foodName: foodName,
          ),
          const Divider(
            color: Color(0xffF3F3F3),
          ),
           IngredientSection(ingredient: ingredient,),
          const Divider(
            color: Color(0xffF3F3F3),
          ),
          const OrderSection(),
        ],
      ),
    );
  }
}
