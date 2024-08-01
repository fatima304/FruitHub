import 'package:flutter/material.dart';
import 'package:fruit_hub/Complete/complete_screen.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/button.dart';
import 'package:fruit_hub/OrderList/widgets/listtile_listview.dart';

class Orderlist extends StatelessWidget {
  const Orderlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const OrderListview(),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: ColorStyle.textColor,
                      ),
                    ),
                    Text(
                      '₦ 60,000',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: ColorStyle.textColor,
                      ),
                    ),
                  ],
                ),
                Button(
                    textButton: 'Checkout',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CompleteScreen(),
                        ),
                      );
                    },
                    buttonSize: 200),
              ],
            ),
          )
        ],
      ),
    );
  }
}
