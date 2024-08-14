import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/Home/widgets/search_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.enteredText});

  final String enteredText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Use the entered text
        Text(
          'Hello $enteredText, What fruit salad\ncombo do you want today?',
          style: GoogleFonts.darkerGrotesque(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: ColorStyle.textColor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Flexible(
              child: CustomSearchBar(),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/setting.png',
              width: 26,
              height: 17,
            ),
          ],
        ),
      ],
    );
  }
}
