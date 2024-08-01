import 'package:flutter/material.dart';
import 'package:fruit_hub/OrderList/widgets/shared_screen.dart';

class DeliveryScreen extends StatelessWidget {
  const DeliveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SharedScreen(
        text: ' Delivery Status',
        widget1: Text('data'),
      ),
    );
  }
}
