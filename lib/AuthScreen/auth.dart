import 'package:flutter/material.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/big_container.dart';
import 'package:fruit_hub/AuthScreen/widgets/small_container_order.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 4,
              child: BigContainer(
                mainImage: 'assets/basket2.png',
              ),
            ),
            Expanded(
              flex: 3,
              child: SingleChildScrollView(
                child: SmallContainerOrder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
