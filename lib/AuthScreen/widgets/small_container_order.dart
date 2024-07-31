import 'package:flutter/material.dart';
import 'package:fruit_hub/AuthScreen/widgets/textfield.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/Home/home_screen.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/button.dart';

class SmallContainerOrder extends StatelessWidget {
  const SmallContainerOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 56, left: 24, right: 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'What is your firstname?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: ColorStyle.textColor,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const TextForm(),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Button(
              buttonSize: 327,
              textButton: 'Start Ordering',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
