import 'package:flutter/material.dart';
import 'package:fruit_hub/Complete/widgets/outline_button.dart';
import 'package:fruit_hub/Complete/widgets/text_complete.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/button.dart';

class CompleteScreen extends StatelessWidget {
  const CompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/complete.png'),
            const TextComplete(),
            Button(
                textButton: 'Track order', onPressed: () {}, buttonSize: 155),
            const OutLineButton(
                textButton: 'Continue shopping', buttonSize: 190),
          ],
        ),
      ),
    );
  }
}
