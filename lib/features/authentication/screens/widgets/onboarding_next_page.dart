import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/features/authentication/controllers/onboarding_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = MyHelperFunction.isDarkMode(context);

    return Positioned(
      right: MySizes.defaultSpace,
      bottom: MyDeviceUtility.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? MyColor.primaryColor:Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}