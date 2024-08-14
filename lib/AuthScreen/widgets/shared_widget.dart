import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/AuthScreen/widgets/textfield.dart';
import 'package:google_fonts/google_fonts.dart';

class SharedWidget extends StatelessWidget {
  const SharedWidget({
    super.key,
    required this.text,
    required this.hintText,
     this.textController, 
  });

  final String text;
  final String hintText;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.darkerGrotesque(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: ColorStyle.textColor,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextForm(
            controller: textController,
            hintText: hintText,
          ),
        ],
      ),
    );
  }
}
