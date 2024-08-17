import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientSection extends StatelessWidget {
  const IngredientSection({super.key, required this.ingredient});

  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'One Pack Contains:',
            style: GoogleFonts.darkerGrotesque(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: ColorStyle.textColor,
            ),
          ),
          const Divider(
            thickness: 2,
            indent: 3,
            endIndent: 160,
            color: ColorStyle.primayColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            ingredient,
            style: GoogleFonts.darkerGrotesque(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorStyle.textColor,
            ),
          ),
        ],
      ),
    );
  }
}