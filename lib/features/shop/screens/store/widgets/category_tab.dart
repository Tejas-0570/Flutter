import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/layouts/grid_layout.dart';
import 'package:mad_project/common/widgets/product_cart/product_card_vertical.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class MyCategoryTab extends StatelessWidget {
  const MyCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              const MyBrandShowCase(
                images: [
                  MyImages.shoeImage1,
                  MyImages.shoeImage2,
                  MyImages.shoeImage3,
                ],
              ),
              const MyBrandShowCase(
                images: [
                  MyImages.shoeImage1,
                  MyImages.shoeImage2,
                  MyImages.shoeImage3,
                ],
              ),
              const SizedBox(height: MySizes.spaceBtwItem),

              //Products
              MySectionHeading(
                  title: 'You might like',
                  showActionButton: true,
                  onPressed: () {}),
              const SizedBox(height: MySizes.spaceBtwItem),

              MyGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const MyProductCardVertical()),
              const SizedBox(height: MySizes.spaceBtwItem),
            ],
          ),
        ),
      ],
    );
  }
}
