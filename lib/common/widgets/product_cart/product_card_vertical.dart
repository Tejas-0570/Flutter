import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/rounded_image.dart';
import 'package:mad_project/common/widgets/product_cart/product_pricr_text.dart';
import 'package:mad_project/features/shop/screens/product_details/product_details.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/shadow_style.dart';
import '../icons/wishlist_icon.dart';
import '../texts/brand_title_text_with_verified_icon.dart';
import '../texts/product_title_text.dart';

class MyProductCardVertical extends StatelessWidget {
  const MyProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [MyShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          color: dark ? MyColor.darkGrey : MyColor.white,
        ),
        child: Column(
          children: [
            MyCircularContainer(
              height: 180,
              padding: const EdgeInsets.all(MySizes.sm),
              backgroundColor: dark ? MyColor.dark : MyColor.light,
              child: Stack(
                children: [
                  //Main Thumbnail Image
                  const MyRoundedImage(
                      imageUrl: MyImages.productImage4, applyImageRadius: true),

                  //Sale Tag or Discount
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
            const SizedBox(height: MySizes.spaceBtwItem / 2),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: MySizes.sm),
              //Only reason to use SizedBox is to make column full width when product title text is large
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyProductTitleText(
                        title: 'Nike Air Shoes', smallSize: true),
                    SizedBox(height: MySizes.spaceBtwItem / 2),
                    BrandTitleTextWithVerifiedIcon(title: 'Nike'),

                  ],
                ),
              ),
            ),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: MySizes.sm),
                  child: MyProductPriceText(price: '1999',),
                ),
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
    );
  }
}

