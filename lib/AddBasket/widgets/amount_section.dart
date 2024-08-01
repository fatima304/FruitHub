import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/AddBasket/widgets/count_section.dart';

class AmountSection extends StatelessWidget {
  const AmountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CountSection(),
        Text(
          '₦ 2,000',
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
