import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/Home/home_screen.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton.icon(
          style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          icon: Image.asset('assets/arrow.png'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          },
          label: const Text(
            'Go back',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: ColorStyle.textColor,
            ),
          ),
        ),
      ],
    );
  }
}
