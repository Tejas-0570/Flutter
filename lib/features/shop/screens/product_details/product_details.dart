import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:mad_project/features/shop/screens/product_details/product_attributes.dart';
import 'package:mad_project/features/shop/screens/product_details/product_detail_image_slider.dart';
import 'package:mad_project/features/shop/screens/product_details/product_meta_data.dart';
import 'package:mad_project/features/shop/screens/product_details/rating_share_widgets.dart';
import 'package:mad_project/features/shop/screens/product_review/product_review.dart';
import 'package:readmore/readmore.dart';
import '../../../../utils/constants/sizes.dart';
import 'bottom_add_to_cart.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Product Image
            MyProductImageSlider(),

            /// Product Details
            Padding(
                padding: EdgeInsets.only(
                    right: MySizes.defaultSpace,
                    left: MySizes.defaultSpace,
                    bottom: MySizes.defaultSpace),
              child: Column(
                children: [
                  ///Rating & Share Button
                  MyRatingAndShare(),

                  ///Price, Title, Stock, Brands
                  MyProductMetaData(),

                  ///Attribute
                  MyProductAttributes(),
                  const SizedBox(height: MySizes.spaceBtwSection),

                  ///Checkout Button
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  const SizedBox(height: MySizes.spaceBtwSection),

                  ///Description
                  const MySectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height: MySizes.spaceBtwItem),
                  const ReadMoreText(
                    'This is the description of the above product and demo of read more function in flutter. This is the description of the above product and demo of read more function in flutter. ',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more ',
                    trimExpandedText: ' Show less ',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),


                  ///Reviews
                  const Divider(),
                  const SizedBox(height: MySizes.spaceBtwItem),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MySectionHeading(title: 'Review(99)', showActionButton: false, onPressed: (){}),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3), onPressed: () => Get.to(() => const ProductReviewScreen()) ),
                    ],
                  ),
                  const SizedBox(height: MySizes.spaceBtwItem),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

