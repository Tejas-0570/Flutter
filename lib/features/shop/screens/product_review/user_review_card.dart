import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/common/widgets/rating/custom_rating_bar.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                    backgroundImage: AssetImage(MyImages.reviewUser1)),
                const SizedBox(width: MySizes.spaceBtwItem),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem),

        ///Review
        Row(
          children: [
            const CustomRatingBarIndicator(rating: 4),
            const SizedBox(width: MySizes.spaceBtwItem),
            Text('1 Sep 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem),
        const ReadMoreText(
          'This product ie very good and i recommend this product to buy very nice quality and service is provided. Great Job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show less',
          trimCollapsedText: 'Show more',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColor.primaryColor),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColor.primaryColor),
        ),
        const SizedBox(height: MySizes.spaceBtwItem),

        ///Company Review
        MyCircularContainer(
          backgroundColor: dark ? MyColor.darkGrey : MyColor.lightGrey,
          child: Padding(
            padding: const EdgeInsets.all(MySizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Aura's", style: Theme.of(context).textTheme.titleMedium),
                    Text('2 Sep 2024', style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ),
                const SizedBox(height: MySizes.spaceBtwItem),
                const ReadMoreText(
                  'This product ie very good and i recommend this product to buy very nice quality and service is provided. Great Job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Show less',
                  trimCollapsedText: 'Show more',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColor.primaryColor),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: MyColor.primaryColor),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
}
