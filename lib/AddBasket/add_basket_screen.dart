import 'package:flutter/material.dart';
import 'package:fruit_hub/AddBasket/widgets/details_section.dart';
import 'package:fruit_hub/AddBasket/widgets/image_section.dart';

class AddBasketScreen extends StatelessWidget {
  const AddBasketScreen(
      {super.key, required this.imgDetails, required this.foodName, required this.price});
  final String price;
  final String imgDetails;
  final String foodName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFA451),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: ImageSection(
              imgDetails: imgDetails,
            ),
          ),
          Expanded(
            flex: 5,
            child: DetailsSection(price: price, foodName: foodName),
          ),
        ],
      ),
    );
  }
}
