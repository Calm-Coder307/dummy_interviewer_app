
import 'package:flutter/material.dart';
// import 'package:interview_app/domain/entities/rating_data/ratingcard_entity.dart';
import 'package:pro1/data/models/rating_model.dart';

import '../../../domain/entities/ratings_entities/rating_entities.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class RatingDataSource {
  Future<List<RatingEntity>> getRatingData() async {

    return _ratingsData();
  }

    Future<List<RatingEntity>> _ratingsData() async {

    List<RatingEntity> ratingData =  <RatingEntity>[
      const RatingEntity(
        // id: '1',
        title: 'Awesome', 
        description: "Best Interviewer Ever!",
        emoji: "👏🏻",
        color: Colors.blue,
      ),
      const RatingEntity(
        // id: '2',
        title: "Good",
        description: "Nice person. Really Nice!",
        emoji: "👍🏻",
        color: Colors.green  
      ),
      const RatingEntity(
        // id: '3',
        title: "Neutral",
        description: "Ummm... Okay. I guess!",
        emoji: "😐",
        color: Colors.grey
      ),
      const RatingEntity(
        // id: '4',
        title: "Bad",
        description: "Needs to Improve! A LOT!",
        emoji: "☹",
        color: Colors.red
      ),
    ];

    return Future.value(ratingData);
    // return ratingData;

    // List RatingData = [
    //     {
    //         "title":"Awesome",
    //         "description":"Best Interviewer Ever!",
    //         "emoji":"👏🏻",
    //         "color": "Colors.blue"
    //     },
    //     {
    //         "title":"Good",
    //         "description":"Nice person. Really Nice!",
    //         "emoji":"👍🏻",
    //         "color": "Colors.green"
    //     },
    //     {
    //         "title":"Neutral",
    //         "description":"Ummm... Okay. I guess!",
    //         "emoji":"😐",
    //         "color": "Colors.grey"
    //     },
    //     {
    //         "title":"Bad",
    //         "description":"Needs to Improve! A LOT!",
    //         "emoji":"☹",
    //         "color": "Colors.red"
    //     }
    // ];

    // if(RatingData.isNotEmpty) {
    //   return RatingData.map((rating) => RatingModel.fromJson(rating)).toList();
    // }
    // else{
    //   print('List is Empty');
    //   return [];
    // }
  }
}



// const RatingData = [
//   RatingModel(
//     // id: '1',
//     title: 'Awesome', 
//     description: "Best Interviewer Ever!",
//     emoji: "👏🏻",
//   ),
//   RatingModel(
//     // id: '2',
//     title: "Good",
//     description: "Nice person. Really Nice!",
//     emoji: "👍🏻",
//   ),
//   RatingModel(
//     // id: '3',
//     title: "Neutral",
//     description: "Ummm... Okay. I guess!",
//     emoji: "😐",
//   ),
//   RatingModel(
//     // id: '4',
//     title: "Bad",
//     description: "Needs to Improve! A LOT!",
//     emoji: "☹",
//   ),
// ];