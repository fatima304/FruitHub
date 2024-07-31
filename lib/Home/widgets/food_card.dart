import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/models/food_model.dart';
import 'package:fruit_hub/Home/widgets/price_widget.dart';

// ignore: must_be_immutable
class CustomFoodCard extends StatelessWidget {
  CustomFoodCard({
    super.key,
    required this.cardModel,
  });

  CardModel? cardModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Card(
        elevation: 2,
        color: cardModel?.cardColor ?? Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    width: 80,
                    height: 80,
                    cardModel!.foodImg,
                  ),
                  Text(
                    cardModel!.foodName,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: ColorStyle.textColor,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PriceWidget(
                          price: cardModel!.price,
                        ),
                        Image.asset(
                          width: 30,
                          height: 30,
                          'assets/plus.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: ColorStyle.primayColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
