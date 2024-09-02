import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/appbar/tabbar.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/search_bar_container.dart';
import 'package:mad_project/common/widgets/layouts/grid_layout.dart';
import 'package:mad_project/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:mad_project/features/shop/screens/all_brands/all_brands.dart';
import 'package:mad_project/features/shop/screens/store/widgets/category_tab.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/product_cart/brand_card.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            MyCartCounterIcon(onPressed: () {}),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: MyHelperFunction.isDarkMode(context)
                    ? MyColor.black
                    : MyColor.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(MySizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: MySizes.spaceBtwItem),
                      const MySearchContainer(
                          text: 'Search in Store',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: MySizes.spaceBtwSection),

                      /// --Featured Brands
                      MySectionHeading(
                          title: 'Featured Brands', onPressed: () => Get.to(() => const AllBrands())
                      ),
                      const SizedBox(height: MySizes.spaceBtwItem),

                      MyGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const MyBrandCard(showBorder: true);
                          })
                    ],
                  ),
                ),

                // ---- Tabs ----
                bottom: const MyTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),
              MyCategoryTab(),

            ],
          ),
        ),
      ),
    );
  }
}
