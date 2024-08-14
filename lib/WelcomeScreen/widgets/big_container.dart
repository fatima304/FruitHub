import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

class BigContainer extends StatelessWidget {
  const BigContainer({
    super.key,
    required this.mainImage,
  });
  final String mainImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      width: double.infinity,
      color: ColorStyle.primayColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              'assets/small.png',
              width: 50,
              height: 37.52,
            ),
          ),
          Flexible(
            child: Image.asset(
              mainImage,
              width: 301,
              height: 260,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/ellipse.png',
            width: 301,
            height: 12,
          ),
        ],
      ),
    );
  }
}
