import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/image_strings.dart';
import '../../utils/constants/sizes.dart';


class MySocialButton extends StatelessWidget {
  const MySocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyColor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                image: AssetImage(MyImages.google),
                width: MySizes.iconMd,
                height: MySizes.iconMd),
          ),
        ),
        const SizedBox(width: MySizes.spaceBtwItem),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyColor.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
                image: AssetImage(MyImages.facebook),
                width: MySizes.iconMd,
                height: MySizes.iconMd),
          ),
        ),
      ],
    );
  }
}


