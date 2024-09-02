import 'package:flutter/material.dart';

import '../../../../common/widgets/banner_image/rounded_image.dart';
import '../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';
import '../../../../common/widgets/texts/product_title_text.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class MyCartItem extends StatelessWidget {
  const MyCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        ///Image
        MyRoundedImage(imageUrl: MyImages.shoeImage4,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(MySizes.sm),
          backgroundColor: MyHelperFunction.isDarkMode(context) ? MyColor.darkGrey : MyColor.light,
        ),
        const SizedBox(width: MySizes.spaceBtwItem),

        ///Title , Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleTextWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: MyProductTitleText(title: 'Nike Snickers', maxLines: 1)),

              ///Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color : ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Greenish-brown ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size : ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
