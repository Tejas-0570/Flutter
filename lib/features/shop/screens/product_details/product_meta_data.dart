import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/common/widgets/images/circular_image.dart';
import 'package:mad_project/common/widgets/product_cart/product_pricr_text.dart';
import 'package:mad_project/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mad_project/common/widgets/texts/product_title_text.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class MyProductMetaData extends StatelessWidget {
  const MyProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        ///Price and Sale Price
        Row(
          children: [
            MyCircularContainer(
              radius: MySizes.sm,
              backgroundColor: MyColor.secondaryColor.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                  horizontal: MySizes.sm, vertical: MySizes.xs),
              child: Text('25%', style: Theme
                  .of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: MyColor.black)),
            ),
            const SizedBox(width: MySizes.spaceBtwItem),

            Text('₹1999', style: Theme
                .of(context)
                .textTheme
                .titleSmall!
                .apply(decoration: TextDecoration.lineThrough)),
            const SizedBox(width: MySizes.spaceBtwItem),
            const MyProductPriceText(price: '1499', isLarge: true),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem / 1.5),

        ///Title
        const MyProductTitleText(title: 'Nike Air Shoe'),
        const SizedBox(height: MySizes.spaceBtwItem / 2.5),


        ///Stock Status
        Row(
          children: [
            const MyProductTitleText(title: 'Status'),
            const SizedBox(width: MySizes.spaceBtwItem / 1.5),
            Text('In Stock', style: Theme
                .of(context)
                .textTheme
                .titleMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem / 1.5),


        ///Brand
        Row(
          children: [
            MyCircularImage(
              image: dark ? MyImages.nikeLogoWhite : MyImages.nikeLogoBlack,
              height: 32,
              width: 32,
              overlayColor: dark ? MyColor.white : MyColor.black,
            ),
            const BrandTitleTextWithVerifiedIcon(title: 'Nike', brandTextSizes: TextSizes.medium,)

          ],

        ),

      ],
    );
  }
}
