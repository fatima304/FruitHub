import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruit_hub/features/Home/widgets/card_food_listview.dart';

class RecommendSection extends StatelessWidget {
  const RecommendSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended Combo',
            style: GoogleFonts.darkerGrotesque(
              fontSize: 25.sp,
              fontWeight: FontWeight.w700,
              color: ColorStyle.textColor,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const CardFoodListview(),
        ],
      ),
    );
  }
}
