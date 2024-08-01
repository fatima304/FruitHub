import 'package:flutter/material.dart';
import 'package:fruit_hub/AddBasket/add_basket_screen.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/AddBasket/widgets/back_button.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({super.key, required this.textBar});

  final String textBar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40),
      decoration: const BoxDecoration(
        color: ColorStyle.primayColor,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomBackButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddBasketScreen(),
                ),
              );
            },
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            textBar,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
