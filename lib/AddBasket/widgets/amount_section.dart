import 'package:flutter/material.dart';
import 'package:fruit_hub/AddBasket/widgets/price_section.dart';
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
        PriceSection(),
      ],
    );
  }
}
