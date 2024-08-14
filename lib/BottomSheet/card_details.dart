import 'package:flutter/material.dart';
import 'package:fruit_hub/AuthScreen/widgets/shared_widget.dart';
import 'package:fruit_hub/Complete/complete_screen.dart';
import 'package:fruit_hub/Complete/widgets/outline_button.dart';
import 'package:fruit_hub/Helper/constant.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Expanded(
              child: SharedWidget(
                text: 'Date',
                hintText: '10/30',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: SharedWidget(
                text: 'CCV',
                hintText: '123',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 90,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 22),
          decoration: const BoxDecoration(
            color: ColorStyle.primayColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: OutLineButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CompleteScreen(),
                ),
              );
            },
            textButton: 'Complete Order',
            buttonSize: 120,
          ),
        ),
      ],
    );
  }
}
