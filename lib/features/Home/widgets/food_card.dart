import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:fruit_hub/features/models/food_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/AddBasket/add_basket_screen.dart';

// ignore: must_be_immutable
class CustomFoodCard extends StatelessWidget {
  CustomFoodCard({
    super.key,
    required this.cardModel,
  });

  CardModel? cardModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddBasketScreen(
              price: cardModel!.price,
              foodName: cardModel!.foodName,
              imgDetails: cardModel!.foodImg,
              ingredient: cardModel!.ingredient,
            ),
          ),
        );
      },
      child: SizedBox(
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
                      style: GoogleFonts.darkerGrotesque(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: ColorStyle.textColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '₦ ${cardModel!.price}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffF08626),
                            ),
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
      ),
    );
  }
}
