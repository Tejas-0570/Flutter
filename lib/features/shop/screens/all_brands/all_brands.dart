import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/layouts/grid_layout.dart';
import 'package:mad_project/common/widgets/product_cart/brand_card.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:get/get.dart';
import 'package:mad_project/features/shop/screens/all_brands/brand_product.dart';
import '../../../../utils/constants/sizes.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(title: Text('Brands'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              ///Heading
              const MySectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItem),

              ///Brands
              MyGridLayout(
                  itemCount: 8,
                  mainAxisExtent: 80,
                  itemBuilder: (context, index) => MyBrandCard(showBorder: true, onTap: () => Get.to(() => const BrandProduct()),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
