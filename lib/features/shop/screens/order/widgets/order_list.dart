import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class MyOrderListItems extends StatelessWidget {
  const MyOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      separatorBuilder: (_, __) => const SizedBox(height: MySizes.spaceBtwItem),
      itemBuilder: (_, index) => MyCircularContainer(
        padding: const EdgeInsets.all(MySizes.md),
        showBorder: true,
        backgroundColor: dark ? MyColor.dark : MyColor.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ///Row-1
            Row(
              children: [
                ///Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: MySizes.spaceBtwItem / 2),

                ///Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: MyColor.primaryColor, fontWeightDelta: 1)),
                      Text('07 Nov 2024', style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),
                /// 3 - Icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34, size: MySizes.iconSm))
              ],
            ),
            const SizedBox(height: MySizes.spaceBtwItem),

            ///Row-2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ///Icon
                      const Icon(Iconsax.ship),
                      const SizedBox(width: MySizes.spaceBtwItem / 2),

                      ///Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('#2376f7', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Row(
                    children: [
                      ///Icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: MySizes.spaceBtwItem / 2),

                      ///Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('10 Nov 2024', style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
