import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/container/circular_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text_with_verified_icon.dart';


class MyBrandCard extends StatelessWidget {
  const MyBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: MyCircularContainer(
        padding: const EdgeInsets.all(MySizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: MyCircularImage(
                image: dark ? MyImages.nikeLogoWhite : MyImages.nikeLogoBlack,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor:
                dark
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
  }
}