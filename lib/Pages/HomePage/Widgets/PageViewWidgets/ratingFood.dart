import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingFood extends StatelessWidget {
  int index;
  RatingFood({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      allowHalfRating: true,
      ignoreGestures: true, //Convert it to Read Only!.
      // initialRating: NetworkInjection.Response[index].rating,
      initialRating: 5,
      direction: Axis.horizontal,
      minRating: 1,
      maxRating: 5,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Icon(
          Icons.star,
          color: Colors.amber,
          size: 10,
        );
      },
      onRatingUpdate: (value) {}, // Will be updated Later
    );
  }
}
