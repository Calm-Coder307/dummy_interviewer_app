// import 'package:flutter/material.dart';

// import '../../domain/entities/ratings_entities/rating_entities.dart';

// class RatingModel extends RatingEntity {
//   final String title;
//   final String description;
//   final String emoji;
//   final Color color;

//   const RatingModel({
//     required this.title,
//     required this.description,
//     required this.emoji,
//     required this.color,
//   })
//   : super (
//     title: title,
//     description: description,
//     emoji: emoji,
//     color: color
//   );

//   factory RatingModel.fromJson(Map<String, dynamic> json) {
//     return RatingModel(
//       title: json['title'],
//       description: json['description'],
//       emoji: json['emoji'],
//       color: json['color'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'description': description,
//       'emoji': emoji,
//       'color': color,
//     };
//   }
// }