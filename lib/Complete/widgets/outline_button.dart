import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

class OutLineButton extends StatelessWidget {
  const OutLineButton({
    super.key,
    required this.textButton,
    required this.buttonSize,
  });
  final double buttonSize;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
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
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: ColorStyle.primayColor,
        ),
      ),
    );
  }
}
