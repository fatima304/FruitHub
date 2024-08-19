import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:fruit_hub/features/AddBasket/widgets/amount_section.dart';
class FoodAmount extends StatelessWidget {
  const FoodAmount({
    super.key,
    required this.foodName,
    required this.price,
  });
  final String price;
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          foodName,
          style: GoogleFonts.darkerGrotesque(
            fontSize: 33,
            fontWeight: FontWeight.w700,
            color: ColorStyle.textColor,
          ),
        ),
        const SizedBox(height: 20),
        AmountSection(
          price: price,
        ),
      ],
    );
  }
}
