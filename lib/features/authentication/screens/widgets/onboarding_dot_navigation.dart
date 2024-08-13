import 'package:flutter/material.dart';
import 'package:mad_project/features/authentication/controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';


class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = MyHelperFunction.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: MyDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: MySizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,// when someone click on dots then it goes to onboarding_controller in that it call the method dotNavigationClick
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: dark ? MyColor.light : MyColor.dark, dotHeight: 6),
      ),
    );
  }
}