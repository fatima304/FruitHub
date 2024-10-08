import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/models/food_data.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/features/Home/widgets/food_card.dart';

class FoodCategoryTabView extends StatelessWidget {
  const FoodCategoryTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Column(
        children: [
          TabBar(
            dividerHeight: 0,
            isScrollable: true,
            labelColor: ColorStyle.textColor,
            labelStyle: GoogleFonts.darkerGrotesque(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
            unselectedLabelStyle: GoogleFonts.darkerGrotesque(
              fontSize: 17.sp,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelColor: Colors.grey,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: ColorStyle.primayColor, width: 2.w),
              insets: EdgeInsets.symmetric(horizontal: 20.w),
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
            height: 200.h,
            child: TabBarView(
              children: categories.map((category) {
                int index = categories.indexOf(category);
                return SizedBox(
                  height: 220.h,
                  child: ListView.builder(
                    itemCount: foodData[index].length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, item) {
                      return CustomFoodCard(cardModel: foodData[index][item]);
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
