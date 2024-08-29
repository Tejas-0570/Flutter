import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/icons/wishlist_icon.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class MyBottomAddToCart extends StatelessWidget {
  const MyBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: MySizes.defaultSpace, vertical: MySizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? MyColor.darkGrey : MyColor.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(MySizes.cardRadiusLg),
          topRight: Radius.circular(MySizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const MyCircularIcon(icon: Iconsax.minus,
                  backgroundColor: MyColor.grey,
                  width: 40,
                  height: 40,
                  color: MyColor.white),
              const SizedBox(width: MySizes.spaceBtwItem),
              Text('2', style: Theme
                  .of(context)
                  .textTheme
                  .titleSmall),
              const SizedBox(width: MySizes.spaceBtwItem),
              const MyCircularIcon(icon: Iconsax.add,
                  backgroundColor: MyColor.black,
                  width: 40,
                  height: 40,
                  color: MyColor.white),
            ],
          ),
          ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(MySizes.md),
            backgroundColor: MyColor.black,
            side: const BorderSide(color: MyColor.black),
          ),
            child: const Text('Add To Cart'),
          ),
        ],
      ),
    );
  }
}
