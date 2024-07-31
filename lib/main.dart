import 'package:flutter/material.dart';
import 'package:fruit_hub/OrderList/order_list_screen.dart';

void main() {
  runApp(
    const FruitHub(),
  );
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffFFA451),
        ),
        useMaterial3: true,
      ),
      home: const OrderListScreen(),
    );
  }
}