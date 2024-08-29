import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/common/widgets/product_cart/product_pricr_text.dart';
import 'package:mad_project/common/widgets/texts/product_title_text.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/chips/choice_chip.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class MyProductAttributes extends StatelessWidget {
  const MyProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Column(
      children: [
        MyCircularContainer(
          backgroundColor: dark ? MyColor.darkGrey : MyColor.grey,
          padding: const EdgeInsets.all(MySizes.md),
          child: Column(
            children: [
              Row(
                children: [
                  const MySectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: MySizes.spaceBtwItem),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const MyProductTitleText(
                              title: 'Price :', smallSize: true),
                          const SizedBox(width: MySizes.spaceBtwItem),

                          ///Actual Price
                          Text('₹1999',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .apply(
                                      decoration: TextDecoration.lineThrough)),
                          const SizedBox(width: MySizes.spaceBtwItem),

                          ///Price After Discount
                          const MyProductPriceText(price: '1499'),
                        ],
                      ),
                      Row(
                        children: [
                          const MyProductTitleText(
                              title: 'Stock :', smallSize: true),
                          const SizedBox(width: MySizes.spaceBtwItem),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              ///Variation Description
              const MyProductTitleText(
                title:
                    'This is description of the product must up to 4 lines if more than 4 lines are their it should give error like overflow of pixel',
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(height: MySizes.spaceBtwItem),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: MySizes.spaceBtwItem / 2),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                MyChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                MyChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: MySizes.spaceBtwItem / 2),
            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(text: 'EU 40', selected: true, onSelected: (value){}),
                MyChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
                MyChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),

              ],
            ),
          ],
        ),
      ],
    );
  }
}

