import 'package:flutter/material.dart';
import 'package:fruit_hub/models/order_model.dart';
import 'package:fruit_hub/AddBasket/widgets/price_section.dart';

// ignore: must_be_immutable
class OrderListTile extends StatelessWidget {
  OrderListTile({super.key, required this.orderModel});

  OrderModel orderModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 65,
            height: 65,
            color: orderModel.imgColor,
            child: Image.asset(orderModel.img),
          ),
          title: Text(
            orderModel.nameFood,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          subtitle: const Text(
            '2packs',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          trailing: const SizedBox(width: 150, child: PriceSection()),
        ),
      ],
    );
  }
}
