// import 'package:flutter/material.dart';
// import 'package:web_portfolio/app/data/models/models/Recommendation.dart';
// import 'package:web_portfolio/app/modules/home/components/recommendation_card.dart';
// import 'package:web_portfolio/app/shared/constant.dart';

// class Recommendations extends StatelessWidget {
//   const Recommendations({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: defaultPadding),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Recommendations",
//             style: Theme.of(context).textTheme.headline6,
//           ),
//           const SizedBox(height: defaultPadding),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: List.generate(
//                 demo_recommendations.length,
//                 (index) => Padding(
//                   padding: const EdgeInsets.only(right: defaultPadding),
//                   child: RecommendationCard(
//                     recommendation: demo_recommendations[index],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
