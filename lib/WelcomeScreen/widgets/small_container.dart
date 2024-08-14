import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/AuthScreen/auth.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class SmallContainer extends StatelessWidget {
  const SmallContainer({
    super.key,
    required this.text,
    required this.textButton,
  });

  final String text;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 56, left: 24, right: 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: GoogleFonts.darkerGrotesque(
              fontSize: 23,
              color: ColorStyle.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'We deliver the best and freshest fruit salad in town. Order for a combo today!!!',
            style: GoogleFonts.darkerGrotesque(
              fontSize: 19,
              color: const Color(0xff5d577e),
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Button(
              buttonSize: 327,
              textButton: textButton,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AuthScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
