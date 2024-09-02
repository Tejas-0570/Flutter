import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/rounded_image.dart';
import 'package:mad_project/common/widgets/product_cart/product_card_horizontal.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              ///Banner
              const MyRoundedImage(
                  imageUrl: MyImages.banner1,
                  width: double.infinity,
                  applyImageRadius: true),
              const SizedBox(height: MySizes.spaceBtwSection),

              ///Sub-Categories
              Column(
                children: [
                  ///Heading
                  MySectionHeading(title: 'Sports Shirts', onPressed: () {}),
                  const SizedBox(height: MySizes.spaceBtwItem / 2),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(width: MySizes.spaceBtwItem),
                        itemBuilder: (context, index) => const MyProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
