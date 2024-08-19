import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Home/widgets/custom_appbar.dart';
import 'package:fruit_hub/features/Home/widgets/header_section.dart';
import 'package:fruit_hub/features/Home/widgets/recommend_section.dart';
import 'package:fruit_hub/features/Home/widgets/food_category_tab_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.enteredText});

  final String enteredText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff8f8f8),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 12, right: 12, top: 45, bottom: 15),
          child: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 15,
              ),
              HeaderSection(name: enteredText),
              const SizedBox(
                height: 25,
              ),
              const RecommendSection(),
              const SizedBox(
                height: 15,
              ),
              const FoodCategoryTabView(),
            ],
          ),
        ),
      ),
    );
  }
}
