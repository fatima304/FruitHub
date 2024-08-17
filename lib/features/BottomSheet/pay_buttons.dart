import 'package:flutter/material.dart';
import 'package:fruit_hub/features/BottomSheet/bottom_sheet.dart';
import 'package:fruit_hub/features/BottomSheet/card_details.dart';
import 'package:fruit_hub/features/Complete/complete_screen.dart';
import 'package:fruit_hub/features/Complete/widgets/outline_button.dart';

class PayButtons extends StatelessWidget {
  const PayButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          OutLineButton(
            textButton: 'Pay on delivery',
            buttonSize: 160,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CompleteScreen(),
                ),
              );
            },
          ),
          OutLineButton(
            textButton: 'Pay with Card',
            buttonSize: 150,
            onPressed: () {
              showDeliveryBottomSheet(
                context,
                text1: 'Card Holders Name',
                hintText1: 'Adolphus Chris',
                text2: 'Card Number',
                hintText2: '1234 5678 9012 1314',
                bottomWidget: const CardDetails(),
              );
            },
          ),
        ],
      ),
    );
  }
}
