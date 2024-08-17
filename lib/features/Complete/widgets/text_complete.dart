import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class TextComplete extends StatelessWidget {
  const TextComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Congratulations!!!',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: ColorStyle.textColor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Your order have been taken and',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
        Text(
          'is being attended to',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
      ],
    );
  }
}
