import 'package:flutter/material.dart';
import 'package:fruit_hub/AddBasket/widgets/back_button.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomBackButton(),
          Flexible(
            child: Container(
              width: double.infinity,
              color: const Color(0xffFFA451),
              child: Image.asset(
                'assets/quinoa.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
