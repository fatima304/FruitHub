import 'package:flutter/material.dart';
import 'package:fruit_hub/Home/home_screen.dart';
import 'package:fruit_hub/WelcomeScreen/widgets/button.dart';
import 'package:fruit_hub/AuthScreen/widgets/shared_widget.dart';

class SmallContainerOrder extends StatelessWidget {
  SmallContainerOrder({super.key});

  // Create a TextEditingController to manage the text field input
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 56,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Pass the controller to the SharedWidget
          SharedWidget(
            text: 'What is your firstname?',
            hintText: 'Tony',
            textController: _textController,
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: Button(
              buttonSize: 350,
              textButton: 'Start Ordering',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen(enteredText: _textController.text),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
