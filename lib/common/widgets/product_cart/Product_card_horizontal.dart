import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/rounded_image.dart';
import 'package:mad_project/common/widgets/product_cart/product_pricr_text.dart';
import 'package:mad_project/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mad_project/common/widgets/texts/product_title_text.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/shadow_style.dart';
import '../icons/wishlist_icon.dart';

class MyProductCardHorizontal extends StatelessWidget {
  const MyProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        color: dark ? MyColor.darkerGrey : MyColor.lightContainer,
      ),
      child: Row(
        children: [
          ///Thumbnail
          MyCircularContainer(
            height: 120,
            padding: const EdgeInsets.all(MySizes.sm),
            backgroundColor: dark ? MyColor.dark : MyColor.light,
            child: Stack(
              children: [
                ///Thumbnail Image
                const SizedBox(
                  height: 120,
                    width: 120,
                    child: MyRoundedImage(imageUrl: MyImages.sportTShirtImage5, applyImageRadius: true, fit: BoxFit.fill)
                ),
                ///sale Tag
                Positioned(
                  top: 12,
                  child: MyCircularContainer(
                    radius: MySizes.md,
                    backgroundColor: MyColor.discount.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: MySizes.sm, vertical: MySizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: MyColor.black),
                    ),
                  ),
                ),

                //Wishlist or Favorite Icon Button
                 const Positioned(
                    top: 0,
                    right: 0,
                    child: MyCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    )),
              ],
            ),
          ),

          ///Detail
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: MySizes.sm, left: MySizes.sm),
              child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      MyProductTitleText(title: 'Aura Sport T-Shirt', smallSize: true),
                      SizedBox(height: MySizes.spaceBtwItem / 2),
                      BrandTitleTextWithVerifiedIcon(title: 'Aura'),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: MyProductPriceText(price: '499')),

                      ///Add to Cart
                      Container(
                        decoration: const BoxDecoration(
                          color: MyColor.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(MySizes.cardRadiusMd),
                            bottomRight:
                            Radius.circular(MySizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                            width: MySizes.iconLg * 1.1,
                            height: MySizes.iconLg * 1.1,
                            child: Center(
                              child: Icon(Iconsax.add,
                                  color: MyColor.white),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
