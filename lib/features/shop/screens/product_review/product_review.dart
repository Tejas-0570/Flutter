import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/features/shop/screens/product_review/user_review_card.dart';

import '../../../../common/widgets/rating/custom_rating_bar.dart';
import '../../../../utils/constants/sizes.dart';
import 'overall_rating_indicator.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///App Bar
      appBar: const MyAppBar(title: Text('Review & Ratings'), showBackArrow: true),

      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Rating and review are verified and are form people '),
              const SizedBox(height: MySizes.spaceBtwItem),

              ///Overall Rating of Product
              const MyOverallProductRating(),
              const CustomRatingBarIndicator(rating: 4.5),
              Text('12,345', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: MySizes.spaceBtwSection),


              ///User Review List
              const UserReviewCard(),



            ],
          ),
        ),
      ),
    );
  }
}





