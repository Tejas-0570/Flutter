import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/features/authentication/controllers/onboarding_controller.dart';
import 'package:mad_project/utils/constants/colors.dart';
import 'package:mad_project/utils/constants/image_strings.dart';
import 'package:mad_project/utils/constants/sizes.dart';
import 'package:mad_project/utils/constants/text_strings.dart';
import 'package:mad_project/utils/device/device_utility.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';
import '../widgets/onboarding_dot_navigation.dart';
import '../widgets/onboarding_next_page.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/onboarding_skip.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
      //Horizontal Scrollable pages
      PageView(
        controller: controller.pageController, // which page is visible for that we created pageController
        onPageChanged: controller.updatePageIndicator,
      children: const [
      OnBoardingPage(
      image: MyImages.onBoardingImage1,
        title: MyText.onBoardingTitle1,
        subTitle: MyText.onBoardingSubTitle1,
      ),
      OnBoardingPage(
        image: MyImages.onBoardingImage2,
        title: MyText.onBoardingTitle2,
        subTitle: MyText.onBoardingSubTitle2,
      ),
      OnBoardingPage(
        image: MyImages.onBoardingImage3,
        title: MyText.onBoardingTitle3,
        subTitle: MyText.onBoardingSubTitle3,
      ),
      ],
    ),

    //skip button
    const OnBoardingSkip(),

    //dot navigation indicator
    const OnBoardingDotNavigation(),


    //circular button
    const OnBoardingNextButton(),

    ],

    ),
    );
  }
}




