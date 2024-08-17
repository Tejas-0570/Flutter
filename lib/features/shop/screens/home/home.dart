import 'package:flutter/material.dart';
import 'package:mad_project/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:mad_project/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mad_project/features/shop/screens/home/widgets/promo_slider.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/container/search_bar_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(
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
                ],
              ),
            ),

            //Body of Home page
            Padding(
              padding: EdgeInsets.all(MySizes.defaultSpace),
              child: MyPromoSlider(
                banners: [
                  MyImages.banner1,
                  MyImages.banner2,
                  MyImages.banner3,
                  MyImages.banner4,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
