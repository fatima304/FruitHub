import 'package:flutter/material.dart';
import 'package:fruit_hub/OrderList/widgets/order_listtile.dart';

// ignore: must_be_immutable
class OrderListview extends StatelessWidget {
  const OrderListview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OrderListTile(
          padding: 24,
          img: 'assets/food6.png',
          imgColor: Color(0xffFFFAEB),
          subTitle: '2packs',
          title: 'Quinoa fruit salad',
        ),
        Divider(
          thickness: 1.2,
          color: Color(0xffF4F4F4),
        ),
        OrderListTile(
          padding: 24,
          img: 'assets/food8.png',
          imgColor: Color(0xffF1EFF6),
          subTitle: '2packs',
          title: 'Melon fruit salad',
        ),
        Divider(
          thickness: 1.2,
          color: Color(0xffF4F4F4),
        ),
        OrderListTile(
          padding: 24,
          img: 'assets/food7.png',
          imgColor: Color(0xffFEF0F0),
          subTitle: '2packs',
          title: 'Tropical fruit salad',
        ),
      ],
    );
  }
}
