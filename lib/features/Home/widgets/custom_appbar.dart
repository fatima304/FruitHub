import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/Helper/constant.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          width: 22,
          height: 11,
          'assets/drawer.png',
        ),
        Column(
          children: [
            Image.asset(
              width: 25,
              height: 25,
              'assets/icon.png',
            ),
            Text(
              'My basket',
              style: GoogleFonts.darkerGrotesque(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: ColorStyle.textColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
