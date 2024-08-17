import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';

class CountSection extends StatelessWidget {
  const CountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/sub.png'),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '1',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/add.png'),
        ),
      ],
    );
  }
}
