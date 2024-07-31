import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

class TextComplete extends StatelessWidget {
  const TextComplete({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Congratulations!!!',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Your order have been taken and',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: ColorStyle.textColor,
          ),
        ),
        Text(
          'is being attended to',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: ColorStyle.textColor,
          ),
        ),
      ],
    );
  }
}
