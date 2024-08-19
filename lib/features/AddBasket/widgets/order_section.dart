import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:fruit_hub/features/OrderList/order_list_screen.dart';
import 'package:fruit_hub/features/WelcomeScreen/widgets/button.dart';
class OrderSection extends StatelessWidget {
  const OrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
            style: GoogleFonts.darkerGrotesque(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: ColorStyle.textColor,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/fav.png'),
              Button(
                  buttonSize: 250,
                  textButton: 'Add to basket',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrderListScreen(),
                      ),
                    );
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
