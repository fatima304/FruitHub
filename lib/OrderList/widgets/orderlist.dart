import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../BottomSheet/bottom_sheet.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/button.dart';
import 'package:fruit_hub/BottomSheet/pay_buttons.dart';
import 'package:fruit_hub/OrderList/widgets/order_listview.dart';

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: GoogleFonts.darkerGrotesque(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: ColorStyle.textColor,
                      ),
                    ),
                    const Text(
                      '₦ 60,000',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: ColorStyle.textColor,
                      ),
                    ),
                  ],
                ),
                Button(
                  textButton: 'Checkout',
                  onPressed: () {
                    showDeliveryBottomSheet(context,
                        text1: 'Delivery address',
                        hintText1: '10th avenue, Lekki, Lagos State',
                        text2: 'Number we can call',
                        hintText2: '09090605708',
                        bottomWidget: const PayButtons());
                  },
                  buttonSize: 200,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
