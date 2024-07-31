import 'package:flutter/material.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/big_container.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/small_container.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FixBody(),
    );
  }
}

class FixBody extends StatelessWidget {
  const FixBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 4,
          child: BigContainer(
            mainImage: 'assets/basket.png',
          ),
        ),
        Expanded(
          flex: 3,
          child: SmallContainer(
            textButton: 'Let\'s Continue',
            text: 'Get The Freshest Fruit Salad Combo',
          ),
        ),
      ],
    );
  }
}
