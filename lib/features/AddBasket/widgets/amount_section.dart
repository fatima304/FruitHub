import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:fruit_hub/features/AddBasket/widgets/count_section.dart';

class AmountSection extends StatelessWidget {
  const AmountSection({
    super.key,
    required this.price,
  });
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CountSection(),
        Text(
          '₦ $price',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: ColorStyle.textColor,
          ),
        ),
      ],
    );
  }
}
