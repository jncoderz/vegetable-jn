// import 'package:flutter/material.dart';
// import 'package:vegitable_cart/utils/app_colors.dart';

// class PageIndicator extends StatefulWidget {
//   const PageIndicator({super.key});

//   @override
//   State<PageIndicator> createState() => _PageIndicatorState();
// }

// class _PageIndicatorState extends State<PageIndicator> {
//   int currentPage = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List<Widget>.generate(4, (index) {
//         return Container(
//           margin: EdgeInsets.symmetric(horizontal: 4),
//           height: 10,
//           width: 10,
//           decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: currentPage == index ? AppColors.wht : AppColors.gryS),
//         );
//       }),
//     );
//   }
// }
