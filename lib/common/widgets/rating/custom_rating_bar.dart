import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart'; // Import the correct package

import '../../../utils/constants/colors.dart';

class CustomRatingBarIndicator extends StatelessWidget { // Renamed to CustomRatingBarIndicator
  const CustomRatingBarIndicator({
    super.key,
    required this.rating,
    this.itemSize = 25,
    this.unratedColor = MyColor.lightGrey,
  });

  final double rating;
  final double itemSize; // Changed int to double as per RatingBarIndicator's itemSize parameter
  final Color unratedColor;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating, // Use the rating provided
        itemSize: itemSize,
        unratedColor: unratedColor,
        itemBuilder: (_, __) => const Icon(Iconsax.star1, color: MyColor.primaryColor)
    );
  }
}
