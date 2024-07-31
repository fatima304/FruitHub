import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

class PriceSection extends StatelessWidget {
  const PriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/price2.png'),
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            '2,000',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
              color: ColorStyle.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
