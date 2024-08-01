import 'package:flutter/material.dart';
import 'package:fruit_hub/OrderList/widgets/order_listtile.dart';

// ignore: must_be_immutable
class OrderListview extends StatelessWidget {
  const OrderListview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OrderListTile(
            img: 'assets/food6.png',
            imgColor: Color(0xffFFFAEB),
            nameFood: 'Quinoa fruit salad'),
        OrderListTile(
            img: 'assets/food8.png',
            imgColor: Color(0xffF1EFF6),
            nameFood: 'Melon fruit salad'),
        OrderListTile(
            img: 'assets/food7.png',
            imgColor: Color(0xffFEF0F0),
            nameFood: 'Tropical fruit salad'),
      ],
    );
  }
}
