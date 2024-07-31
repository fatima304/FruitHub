import 'package:flutter/material.dart';
import 'package:fruit_hub/models/order_model.dart';
import 'package:fruit_hub/OrderList/widgets/order_listtile.dart';

// ignore: must_be_immutable
class OrderListTileListview extends StatelessWidget {
  OrderListTileListview({super.key});

  List<OrderModel> orderModel = [
    OrderModel(
        img: 'assets/food6.png',
        imgColor: const Color(0xffFFFAEB),
        nameFood: 'Quinoa fruit salad'),
    OrderModel(
        img: 'assets/food8.png',
        imgColor: const Color(0xffF1EFF6),
        nameFood: 'Melon fruit salad'),
    OrderModel(
        img: 'assets/food7.png',
        imgColor: const Color(0xffFEF0F0),
        nameFood: 'Tropical fruit salad'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: orderModel.length,
        itemBuilder: (context, index) {
          return OrderListTile(
            orderModel: orderModel[index],
          );
        },
      ),
    );
  }
}
