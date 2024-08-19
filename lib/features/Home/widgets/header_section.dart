import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:fruit_hub/features/Home/widgets/search_bar.dart';
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Hello $name, ',
                style: GoogleFonts.darkerGrotesque(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: ColorStyle.textColor,
                ),
              ),
              TextSpan(
                text: 'What fruit salad\ncombo do you want today?',
                style: GoogleFonts.darkerGrotesque(
                  fontSize: 23,
                  fontWeight: FontWeight.w700,
                  color: ColorStyle.textColor,
                ),
              ),
            ],
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
