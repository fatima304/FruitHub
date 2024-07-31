import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

class CountSection extends StatelessWidget {
  const CountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/sub.png'),
        ),
        const SizedBox(
          width: 20,
        ),
        const Text(
          '1',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: ColorStyle.textColor,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        GestureDetector(
          onTap: () {},
          child: Image.asset('assets/add.png'),
        ),
      ],
    );
  }
}
