import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class OutLineButton extends StatelessWidget {
   OutLineButton({
    super.key,
    required this.onPressed,
    required this.textButton,
    required this.buttonSize,
  });
  final double buttonSize;
  final String textButton;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(color: ColorStyle.primayColor),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        fixedSize: Size(buttonSize, 56),
      ),
      child: Text(
        textButton,
        style: GoogleFonts.darkerGrotesque(
          fontSize: 19.5,
          fontWeight: FontWeight.w500,
          color: ColorStyle.primayColor,
        ),
      ),
    );
  }
}
