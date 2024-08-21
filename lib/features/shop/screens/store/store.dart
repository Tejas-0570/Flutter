import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/search_bar_container.dart';
import 'package:mad_project/common/widgets/product_cart/cart_menu_icon.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                backgroundColor: MyHelperFunction.isDarkMode(context) ? MyColor.black : MyColor.white,
                expandedHeight: 440,
                
                flexibleSpace: Padding(
                  padding:  const EdgeInsets.all(MySizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children:  [
                      const SizedBox(height: MySizes.spaceBtwItem),
                      const MySearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero),
                      const SizedBox(height: MySizes.spaceBtwSection),

                      /// --Featured Brands
                      MySectionHeading(title: 'Featured Brands', onPressed: (){}),
                      const SizedBox(height: MySizes.spaceBtwItem),

                      MyCircularContainer(
                        padding: const EdgeInsets.all(MySizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              width: 56,
                              height: 56,
                              padding: const EdgeInsets.all(MySizes.sm),
                              decoration: BoxDecoration(
                                color: MyHelperFunction.isDarkMode(context) ? MyColor.black : MyColor.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image(
                                image: const AssetImage(MyImages.clothIcon),
                                color: MyHelperFunction.isDarkMode(context) ? MyColor.white : MyColor.black,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          }, body: Container()),
    );
  }
}
