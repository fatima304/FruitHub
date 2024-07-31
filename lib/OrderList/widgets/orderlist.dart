import 'package:flutter/material.dart';
import 'package:fruit_hub/OrderList/widgets/listtile_listview.dart';

class Orderlist extends StatelessWidget {
  const Orderlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child:  OrderListTileListview(),
    );
  }
}
