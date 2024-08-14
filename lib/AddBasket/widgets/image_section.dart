import 'package:flutter/material.dart';
import 'package:fruit_hub/AddBasket/widgets/back_button.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.imgDetails});

  final String imgDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 24, right: 24, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomBackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Flexible(
            child: Container(
              width: double.infinity,
              color: const Color(0xffFFA451),
              child: Image.asset(
                width: 176,
                height: 176,
                imgDetails,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
