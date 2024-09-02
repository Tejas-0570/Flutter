import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/product_cart/product_card_vertical.dart';
import 'package:mad_project/features/shop/screens/all_products/all_products.dart';
import 'package:mad_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mad_project/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mad_project/features/shop/screens/home/widgets/promo_slider.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_bar_container.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  MyHomeAppBar(),
                  SizedBox(height: MySizes.spaceBtwSection),

                  //Search Bar
                  MySearchContainer(text: 'Search in Store'),
                  SizedBox(height: MySizes.spaceBtwItem),

                  //Category
                  Padding(
                    padding: EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        MySectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          textColor: MyColor.white,
                        ),
                        SizedBox(height: MySizes.spaceBtwItem),

                        //Categories list
                        MyHomeCategories(),
                      ],
                    ),
                  ),
                        SizedBox(height: MySizes.spaceBtwSection),
                ],
              ),
            ),

            //Body of Home page
            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  const MyPromoSlider(
                    banners: [
                      MyImages.banner1,
                      MyImages.banner2,
                      MyImages.banner3,
                      MyImages.banner4,
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwSection),

                  MySectionHeading(title: 'Popular Products', onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: MySizes.spaceBtwItem),


                  MyGridLayout(itemCount: 2, itemBuilder: (_, index) => const MyProductCardVertical()),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

