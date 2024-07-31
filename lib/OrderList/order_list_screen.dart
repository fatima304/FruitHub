import 'package:flutter/material.dart';
import 'package:fruit_hub/OrderList/widgets/orderlist.dart';
import 'package:fruit_hub/OrderList/widgets/custom_app_bar.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: CustomBar(),
          ),
          Expanded(
            flex: 8,
            child: Orderlist(),
          ),
        ],
      ),
    );
  }
}
