import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/AddBasket/widgets/back_button.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      decoration: const BoxDecoration(
        color: ColorStyle.primayColor,
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomBackButton(),
          SizedBox(
            width: 30,
          ),
          Text(
            'My Basket',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
