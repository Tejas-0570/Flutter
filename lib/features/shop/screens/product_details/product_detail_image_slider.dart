import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/banner_image/rounded_image.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curve_edge_widget.dart';
import '../../../../common/widgets/icons/wishlist_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class MyProductImageSlider extends StatelessWidget {
  const MyProductImageSlider({
    super.key,

  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return MyCurvedEdgesWidget(
      child: Container(
        color: dark ? MyColor.darkGrey : MyColor.light,
        child: Stack(
          children: [
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(MySizes.productImageRadius * 2),
                child: Center(
                  child:
                  Image(image: AssetImage(MyImages.productImage4)),
                ),
              ),
            ),

            /// Image Slider
            Positioned(
              right: 0,
              bottom: 30,
              left: MySizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: MySizes.spaceBtwItem),
                  itemBuilder: (_, index) => MyRoundedImage(
                    imageUrl: MyImages.productImage3,
                    padding: const EdgeInsets.all(MySizes.sm),
                    width: 80,
                    backgroundColor: dark ? MyColor.dark : MyColor.white,
                    border: Border.all(color: MyColor.primaryColor),

                  ),
                ),
              ),
            ),

            const MyAppBar(
              showBackArrow: true,
              actions: [MyCircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
