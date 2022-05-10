import 'package:flutter/material.dart';
import 'package:pro1/domain/entities/ratings_entities/rating_entities.dart';

class GridViewData extends StatelessWidget {
  const GridViewData({ Key? key, required this.ratingEntity }) : super(key: key);

  final RatingEntity ratingEntity;

  @override
  Widget build(BuildContext context) {

    var title = ratingEntity.title;
    var description = ratingEntity.description;
    var emoji = ratingEntity.emoji;
    var color = ratingEntity.color;

    return GridTile(
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: color),
          ),
          child: containerDesign(emoji, title, description),
        ),
      ),
    );
  }

  Widget containerDesign(assetFile, boldText, subText) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topLeft,
            // child: SvgPicture.asset(emoji.toString()),
            child: Text(assetFile, style: const TextStyle(fontSize: 50)),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              boldText,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(subText, style: const TextStyle(fontSize: 17)),
        ],
      ),
    );
  }

  Widget onTapContainerDesign(assetFile, boldText, subText) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(assetFile, style: const TextStyle(fontSize: 50)),
          ),
          const SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              boldText,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(subText,
              style: const TextStyle(fontSize: 17, color: Colors.white)),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:pro1/domain/entities/ratings_entities/rating_entities.dart';
// // import 'package:flutter_svg/flutter_svg.dart';

// const RatingData = [
//   RatingEntity(
//     // id: '1',
//     title: 'Awesome', 
//     description: "Best Interviewer Ever!",
//     emoji: "👏🏻",
//     color: Colors.blue,
//   ),
//   RatingEntity(
//     // id: '2',
//     title: "Good",
//     description: "Nice person. Really Nice!",
//     emoji: "👍🏻",
//     color: Colors.green  
//   ),
//   RatingEntity(
//     // id: '3',
//     title: "Neutral",
//     description: "Ummm... Okay. I guess!",
//     emoji: "😐",
//     color: Colors.grey
//   ),
//   RatingEntity(
//     // id: '4',
//     title: "Bad",
//     description: "Needs to Improve! A LOT!",
//     emoji: "☹",
//     color: Colors.red
//   ),
// ];