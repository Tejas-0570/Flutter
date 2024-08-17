import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/features/shop/controllers/home_controller.dart';

import '../../../../../common/widgets/banner_image/rounded_image.dart';
import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class MyPromoSlider extends StatelessWidget {
  const MyPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: const [
            MyRoundedImage(imageUrl: MyImages.banner1),
            MyRoundedImage(imageUrl: MyImages.banner2),
            MyRoundedImage(imageUrl: MyImages.banner3),
            MyRoundedImage(imageUrl: MyImages.banner4),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize
                  : MainAxisSize.min,
              children: [
                for (int i = 0; i < 4; i++)
                   MyCircularContainer(
                      width: 20,
                      height: 4,
                      margin: const EdgeInsets.only(right: 10),
                      backgroundColor: controller.carousalCurrentIndex.value == i
                          ? MyColor.primaryColor
                          : MyColor.grey),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
