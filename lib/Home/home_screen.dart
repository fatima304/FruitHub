import 'package:flutter/material.dart';
import 'package:fruit_hub/Home/widgets/custom_appbar.dart';
import 'package:fruit_hub/Home/widgets/header_section.dart';
import 'package:fruit_hub/Home/widgets/recommend_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfff8f8f8),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 45, bottom: 15),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              height: 15,
            ),
            HeaderSection(),
            SizedBox(
              height: 25,
            ),
            RecommendSection(),
            SizedBox(
              height: 15,
            ),
            // CategorySection(),
          ],
        ),
      ),
    );
  }
}
