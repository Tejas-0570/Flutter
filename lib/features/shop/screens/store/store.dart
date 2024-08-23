import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/appbar/tabbar.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/search_bar_container.dart';
import 'package:mad_project/common/widgets/layouts/grid_layout.dart';
import 'package:mad_project/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:mad_project/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: MyAppBar(
          title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
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
                            title: 'Featured Brands', onPressed: () {}),
                        const SizedBox(height: MySizes.spaceBtwItem),

                        MyGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: MyCircularContainer(
                                  padding: const EdgeInsets.all(MySizes.sm),
                                  showBorder: true,
                                  backgroundColor: Colors.transparent,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        child: MyCircularImage(
                                          image: MyImages.clothIcon,
                                          isNetworkImage: false,
                                          backgroundColor: Colors.transparent,
                                          overlayColor:
                                              MyHelperFunction.isDarkMode(context)
                                                  ? MyColor.white
                                                  : MyColor.black,
                                        ),
                                      ),
                                      const SizedBox(
                                          width: MySizes.spaceBtwItem / 2),

                                      //Text

                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const BrandTitleTextWithVerifiedIcon(
                                                title: 'Nike',
                                                brandTextSizes: TextSizes.large),
                                            Text(
                                              '250 product',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
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
            body: Container()),
      ),
    );
  }
}
