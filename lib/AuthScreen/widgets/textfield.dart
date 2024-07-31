import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

class TextForm extends StatelessWidget {
  const TextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: 'Tony',
        filled: true,
        fillColor: const Color(0xffF3F1F1),
        hintStyle: const TextStyle(
          fontSize: 20,
          color: Color(0xffC2BDBD),
          fontWeight: FontWeight.w400,
        ),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorStyle.primayColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
    );
  }
}
