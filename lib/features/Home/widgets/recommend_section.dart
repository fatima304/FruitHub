import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:fruit_hub/features/Home/widgets/card_food_listview.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendSection extends StatelessWidget {
  const RecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended Combo',
            style: GoogleFonts.darkerGrotesque(
              fontSize: 25,
              fontWeight: FontWeight.w700,
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
