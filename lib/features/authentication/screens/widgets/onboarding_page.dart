import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: MyHelperFunction.screenWidth() * 0.8,
              //0.8 means 80% of width
              height: MyHelperFunction.screenHeight() * 0.6,
              //0.6 means 60% of height
              image: AssetImage(image)),
          Text(title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
          const SizedBox(height: MySizes.spaceBtwItem),
          Text(subTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
        ],
      ),
    );
  }
}