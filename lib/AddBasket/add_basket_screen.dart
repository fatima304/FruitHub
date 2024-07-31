import 'package:flutter/material.dart';
import 'package:fruit_hub/AddBasket/widgets/details_section.dart';
import 'package:fruit_hub/AddBasket/widgets/image_section.dart';

class AddBasketScreen extends StatelessWidget {
  const AddBasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFA451),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: ImageSection(),
          ),
          Expanded(
            flex: 5,
            child: DetailsSection(),
          ),
        ],
      ),
    );
  }
}
