import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/container/circular_container.dart';
import '../product_cart/brand_card.dart';


class MyBrandShowCase extends StatelessWidget {
  const MyBrandShowCase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return MyCircularContainer(
      showBorder: true,
      borderColor: MyColor.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(MySizes.md),
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItem),
      child: Column(
        children: [
          //Brand with product count
          const MyBrandCard(showBorder: false),
          const SizedBox(height: MySizes.spaceBtwItem),

          //Brand Top 3 Product Images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          ),


        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Expanded(
    child: MyCircularContainer(
      height: 100,
      padding: const EdgeInsets.all(MySizes.md),
      margin: const EdgeInsets.only(right: MySizes.sm),
      backgroundColor: MyHelperFunction.isDarkMode(context) ? MyColor.darkGrey : MyColor.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
