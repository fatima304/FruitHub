import 'package:flutter/material.dart';
import 'package:fruit_hub/features/Helper/constant.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class OrderListTile extends StatelessWidget {
  const OrderListTile({
    super.key,
    required this.img,
    required this.imgColor,
    required this.title,
    this.subTitle,
    this.trailingWidget,
    required this.padding,
  });
  final String img;
  final Color imgColor;
  final double padding;
  final String title;
  final String? subTitle;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: padding),
          child: ListTile(
            leading: Container(
              width: 65,
              height: 90,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: imgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                img,
                width: 40,
                height: 40,
              ),
            ),
            title: Text(
              title,
              style: GoogleFonts.darkerGrotesque(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            subtitle: subTitle != null
                ? Text(
                    subTitle!,
                    style: GoogleFonts.darkerGrotesque(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  )
                : null,
            trailing: trailingWidget ??
                const Text(
                  '₦ 20,000',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: ColorStyle.textColor,
                  ),
                ),
          ),
        ),
        
      ],
    );
  }
}
