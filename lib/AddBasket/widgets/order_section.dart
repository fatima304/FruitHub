import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/button.dart';

class OrderSection extends StatelessWidget {
  const OrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: ColorStyle.textColor,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/fav.png'),
              Button(
                  buttonSize: 250,
                  textButton: 'Add to basket',
                  onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
