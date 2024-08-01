import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

// ignore: must_be_immutable
class CustomBackButton extends StatelessWidget {
   CustomBackButton({ required this.onPressed,
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
          label: const Text(
            'Go back',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: ColorStyle.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
