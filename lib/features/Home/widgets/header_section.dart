import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/Helper/constant.dart';import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fruit_hub/features/Home/widgets/search_bar.dart';
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Hello $name, ',
                style: GoogleFonts.darkerGrotesque(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorStyle.textColor,
                ),
              ),
              TextSpan(
                text: 'What fruit salad\ncombo do you want today?',
                style: GoogleFonts.darkerGrotesque(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w700,
                  color: ColorStyle.textColor,
                ),
              ),
            ],
          ),
        ),
         SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            const Flexible(
              child: CustomSearchBar(),
            ),
             SizedBox(width: 10.w),
            Image.asset(
              'assets/setting.png',
              width: 26.w,
              height: 17.h,
            ),
          ],
        ),
      ],
    );
  }
}
