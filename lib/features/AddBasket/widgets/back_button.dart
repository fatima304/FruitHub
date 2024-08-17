import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomBackButton extends StatelessWidget {
  CustomBackButton({
    required this.onPressed,
    super.key,
  });
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton.icon(
          style: const ButtonStyle(
            fixedSize: WidgetStatePropertyAll(Size(120, 35)),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          icon: Image.asset('assets/arrow.png'),
          onPressed: onPressed,
          label: Text(
            'Go back',
            style: GoogleFonts.darkerGrotesque(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: ColorStyle.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
