import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/AddBasket/widgets/amount_section.dart';

class FoodAmount extends StatelessWidget {
  const FoodAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Quinoa Fruit Salad',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
        SizedBox(height: 20),
        AmountSection(),
      ],
    );
  }
}
