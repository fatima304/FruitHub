import 'package:flutter/material.dart';
import 'package:fruit_hub/features/OrderList/widgets/orderlist.dart';
import 'package:fruit_hub/features/OrderList/widgets/shared_screen.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SharedScreen(
        text: 'My Basket',
        widget1: Orderlist(),
      ),
    );
  }
}
