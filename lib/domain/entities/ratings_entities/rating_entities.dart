import 'package:flutter/material.dart';

class RatingEntity {
  final String title;
  final String description;
  final String emoji;
  final Color color;

  const RatingEntity({
    required this.title,
    required this.description,
    required this.emoji,
    required this.color,
  });

  // Widget build(BuildContext context) {
  //   // return BlocBuilder<InsertionBloc, InsertionState>(
  //   //   builder: (context, state) {
  //       return InkWell(
  //         child: Container(
  //           decoration: BoxDecoration(
  //             borderRadius: BorderRadius.circular(10),
  //             border: Border.all(color: color),

  //           ),
  //           child: containerDesign(emoji, title, description),
  //         ),
  //       );
  //   //   },
  //   // );
  // }

  // Widget containerDesign(assetFile, boldText, subText) {
  //   return Padding(
  //     padding: const EdgeInsets.all(10.0),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.end,
  //       children: [
  //         Align(
  //           alignment: Alignment.topLeft,
  //           // child: SvgPicture.asset(emoji.toString()),
  //           child: Text(emoji, style: const TextStyle(fontSize: 50)),
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Align(
  //           alignment: Alignment.topLeft,
  //           child: Text(
  //             boldText,
  //             style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Text(subText, style: const TextStyle(fontSize: 17)),
  //       ],
  //     ),
  //   );
  // }
}

// class Rating extends StatelessWidget {
//   final String id;
//   final String title;
//   final String description;
//   final String emoji;
//   final Color color;

//   const Rating({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.emoji,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<InsertionBloc, InsertionState>(
//       builder: (context, state) {
//         return InkWell(
//           child: !state.reaction.contains(title)
//           ? Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               border: Border.all(color: color),
//             ),
//             child: GridTile(
//               child: containerDesign(emoji, title, description),
//             ),
//           )
//           : Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: const Color.fromARGB(255, 42, 63, 245)
//             ),
//             child: GridTile(
//               child: onTapContainerDesign(emoji, title, description),
//             ),
//           ),
//           onTap: () {
//             print(state.reaction);
//             if(!state.reaction.contains(id)) {
//               BlocProvider.of<InsertionBloc>(context).add(AddedReactionEvent(title));
//             }
//             // else {
//             //   BlocProvider.of<InsertionBloc>(context).add(RemoveReactionEvent(id));
//             // }
//           },
//         );
//       },
//     );
//   }

  

//   Widget containerDesign(assetFile, boldText, subText) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Align(
//             alignment: Alignment.topLeft,
//             // child: SvgPicture.asset(emoji.toString()),
//             child: Text(emoji, style: const TextStyle(fontSize: 50)),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Text(
//               boldText,
//               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text(subText, style: const TextStyle(fontSize: 17)),
//         ],
//       ),
//     );
//   }

//   Widget onTapContainerDesign(assetFile, boldText, subText) {
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Align(
//             alignment: Alignment.topLeft,
//             child: Text(assetFile, style: const TextStyle(fontSize: 50)),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Align(
//             alignment: Alignment.topLeft,
//             child: Text(
//               boldText,
//               style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Text(subText,
//               style: const TextStyle(fontSize: 17, color: Colors.white)),
//         ],
//       ),
//     );
//   }
// }
