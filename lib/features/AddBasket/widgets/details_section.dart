import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/features/AddBasket/widgets/food_amount.dart';
import 'package:fruit_hub/features/AddBasket/widgets/order_section.dart';
import 'package:fruit_hub/features/AddBasket/widgets/ingredient_section.dart';

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
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FoodAmount(
            price: price,
            foodName: foodName,
          ),
          const Divider(
            color: Color(0xffF3F3F3),
          ),
          IngredientSection(
            ingredient: ingredient,
          ),
          const Divider(
            color: Color(0xffF3F3F3),
          ),
          const OrderSection(),
        ],
      ),
    );
  }
}
