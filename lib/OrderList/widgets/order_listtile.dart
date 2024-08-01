import 'package:flutter/material.dart';
import 'package:fruit_hub/Helper/constant.dart';

// ignore: must_be_immutable
class OrderListTile extends StatelessWidget {
  const OrderListTile({
    super.key,
    required this.img,
    required this.imgColor,
    required this.nameFood,
  });

  final String img;
  final Color imgColor;
  final String nameFood;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
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
              nameFood,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            subtitle: const Text(
              '2 packs',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            trailing: const Text(
              '₦ 20,000',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: ColorStyle.textColor,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Divider(
              thickness: 1,
              color: Color(0xffF4F4F4),
            ),
          ),
        ],
      ),
    );
  }
}
