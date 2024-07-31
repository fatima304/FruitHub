import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

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
              width: 24,
              height: 24,
              'assets/icon.png',
            ),
            const Text(
              'My basket',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: ColorStyle.textColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
