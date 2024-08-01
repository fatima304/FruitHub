import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';
import 'package:fruit_hub/models/food_model.dart';
import 'package:fruit_hub/Home/widgets/card_food_listview.dart';

class FoodCategoryTabView extends StatelessWidget {
  final List<String> categories = ['Hottest', 'Popular', 'New combo', 'Top'];
  final List<List<CardModel>> foodData = [
    [
      CardModel(
          price: '10,000',
          foodImg: 'assets/food1.png',
          foodName: 'Quinoa fruit salad'),
      CardModel(
          price: '10,000',
          foodImg: 'assets/food1.png',
          foodName: 'Tropical fruit salad'),
      CardModel(
          price: '10,000',
          foodImg: 'assets/food1.png',
          foodName: 'Quinoa fruit salad'),
      CardModel(
          price: '10,000',
          foodImg: 'assets/food1.png',
          foodName: 'Tropical fruit salad'),
      // Add more CardModel for 'Hottest'
    ],
    [
      CardModel(
          price: '10,000',
          foodImg: 'assets/food1.png',
          foodName: 'Quinoa fruit salad'),
      CardModel(
          price: '10,000',
          foodImg: 'assets/food1.png',
          foodName: 'Tropical fruit salad'),
    ],
    [
      // Add CardModel for 'New combo'
    ],
    [
      // Add CardModel for 'Top'
    ],
  ];

  FoodCategoryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            dividerHeight: 0,
            isScrollable: true,
            labelColor: ColorStyle.textColor,
            labelStyle: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            unselectedLabelColor: Colors.grey,
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: ColorStyle.primayColor, width: 2.0),
              insets: EdgeInsets.symmetric(horizontal: 16.0),
            ),
            tabs: categories.map((category) {
              return Tab(
                child: Text(
                  category,
                ),
              );
            }).toList(),
          ),
          SizedBox(
            height: 200,
            child: TabBarView(
              children: categories.map((category) {
                // ignore: unused_local_variable
                int index = categories.indexOf(category);
                return CardFoodListview();
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
