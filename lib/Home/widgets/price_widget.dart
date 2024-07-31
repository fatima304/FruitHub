import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.price,
  });

  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/price.png',
          width: 16,
          height: 12.8,
        ),
        Text(
          price,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xffF08626),
          ),
        ),
      ],
    );
  }
}
