import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/icons/wishlist_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';


class ProductQuantityWithAddRemoveButton extends StatelessWidget {
  const ProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: dark ? MyColor.white : MyColor.black,
          backgroundColor: dark ? MyColor.darkGrey : MyColor.light,
        ),

        const SizedBox(width: MySizes.spaceBtwItem),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: MySizes.spaceBtwItem),

        const MyCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: MySizes.md,
          color: MyColor.white ,
          backgroundColor: MyColor.primaryColor,
        ),
      ],
    );
  }
}
