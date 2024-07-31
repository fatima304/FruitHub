import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

class IngredientSection extends StatelessWidget {
  const IngredientSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'One Pack Contains:',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: ColorStyle.textColor,
            ),
          ),
          Divider(
            thickness: 2,
            indent: 3,
            endIndent: 160,
            color: ColorStyle.primayColor,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: ColorStyle.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
