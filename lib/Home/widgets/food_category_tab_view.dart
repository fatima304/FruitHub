// import 'package:flutter/material.dart';
//  // import 'package:fruit_hub/Home/models/food_model.dart';
// import 'package:fruit_hub/Home/widgets/card_food_listview.dart';

// class FoodCategoryTabView extends StatelessWidget {
//   final List<String> categories = ['Hottest', 'Popular', 'New combo', 'Top'];
//   final List<List<CardModel>> foodData = [
//     [
//       CardModel(
//           price: '10,000',
//           foodImg: 'assets/food1.png',
//           foodName: 'Quinoa fruit salad'),
//       CardModel(
//           price: '10,000',
//           foodImg: 'assets/food1.png',
//           foodName: 'Tropical fruit salad'), CardModel(
//           price: '10,000',
//           foodImg: 'assets/food1.png',
//           foodName: 'Quinoa fruit salad'),
//       CardModel(
//           price: '10,000',
//           foodImg: 'assets/food1.png',
//           foodName: 'Tropical fruit salad'),
//       // Add more CardModel for 'Hottest'
//     ],
//     [
//       // Add CardModel for 'Popular'
//     ],
//     [
//       // Add CardModel for 'New combo'
//     ],
//     [
//       // Add CardModel for 'Top'
//     ],
//   ];

//   const FoodCategoryTabView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: categories.length,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           TabBar(
//             isScrollable: true,
//             labelColor: const ColorStyle.textColor,
//             unselectedLabelColor: Colors.grey,
//             indicator: const UnderlineTabIndicator(
//               borderSide: BorderSide(color: ColorStyle.primayColor, width: 2.0),
//               insets: EdgeInsets.symmetric(horizontal: 16.0),
//             ),
//             tabs: categories.map((category) {
//               return Tab(
//                 child: Text(
//                   category,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               );
//             }).toList(),
//           ),
//           Expanded(
//             child: TabBarView(
//               children: categories.map((category) {
//                 int index = categories.indexOf(category);
//                 return CardFoodListview(foodModel: foodData[index]);
//               }).toList(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
