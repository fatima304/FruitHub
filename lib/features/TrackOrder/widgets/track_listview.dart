import 'package:flutter/material.dart';
import 'package:fruit_hub/features/OrderList/widgets/order_listtile.dart';

// ignore: must_be_immutable
class TrackListview extends StatelessWidget {
  const TrackListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
   crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderListTile(
            padding: 0,
            img: 'assets/order.png',
            imgColor: const Color(0xffFFFAEB),
            title: 'Order Taken',
            trailingWidget: Image.asset('assets/done.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Image.asset('assets/track.png'),
          ),
          OrderListTile(
            padding: 0,
            img: 'assets/prepare.png',
            imgColor: const Color(0xffF1EFF6),
            title: 'Order Is Being Prepared',
            trailingWidget: Image.asset('assets/done.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Image.asset('assets/track.png'),
          ),
          OrderListTile(
            padding: 0,
            img: 'assets/delivery.png',
            imgColor: const Color(0xffFEF0F0),
            subTitle: 'Your delivery agent is coming',
            title: 'Order Is Being Delivered',
            trailingWidget: Image.asset('assets/call.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Image.asset('assets/track.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Image.asset(
              'assets/map.png',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Image.asset('assets/track.png'),
          ),
          OrderListTile(
            padding: 0,
            img: 'assets/bigDone.png',
            imgColor: const Color(0xffF0FEF8),
            title: 'Order Received',
            trailingWidget: Image.asset('assets/dot.png'),
          ),
        ],
      ),
    );
  }
}
