import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/Home/widgets/card_food_listview.dart';

class RecommendSection extends StatelessWidget {
  const RecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recommended Combo',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w500,
              color: ColorStyle.textColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CardFoodListview(),
        ],
      ),
    );
  }
}
