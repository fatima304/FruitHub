import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/Home/widgets/search_bar.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hello Tony, What fruit salad\ncombo do you want today?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: ColorStyle.textColor,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const Flexible(
              child: CustomSearchBar(),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/setting.png',
              width: 26,
              height: 17,
            ),
          ],
        ),
      ],
    );
  }
}
