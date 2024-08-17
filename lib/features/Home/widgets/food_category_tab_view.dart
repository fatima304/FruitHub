import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/Home/models/food_data.dart';
import 'package:fruit_hub/features/Home/widgets/food_card.dart';

class FoodCategoryTabView extends StatelessWidget {
  const FoodCategoryTabView({super.key});

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
            labelStyle: GoogleFonts.darkerGrotesque(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: GoogleFonts.darkerGrotesque(
              fontSize: 17,
              fontWeight: FontWeight.w500,
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
                return SizedBox(
                  height: 220,
                  child: ListView.builder(
                    itemCount: foodData[0].length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CustomFoodCard(cardModel: foodData[0][index]);
                    },
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
