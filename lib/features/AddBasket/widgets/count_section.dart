import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/Helper/constant.dart';

class CountSection extends StatefulWidget {
  const CountSection({
    super.key,
  });

  @override
  State<CountSection> createState() => _CountSectionState();
}

int counter = 1;

class _CountSectionState extends State<CountSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            counter--;
            if (counter < 1) {
              counter = 1;
            }
            setState(() {});
          },
          child: Image.asset('assets/sub.png'),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '$counter',
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
          onTap: () {
            counter++;
            setState(() {});
          },
          child: Image.asset('assets/add.png'),
        ),
      ],
    );
  }
}
