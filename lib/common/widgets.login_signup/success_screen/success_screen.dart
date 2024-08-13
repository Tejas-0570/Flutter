import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/common/styles/spacing_styles.dart';
import 'package:mad_project/features/authentication/screens/login/login.dart';
import 'package:mad_project/utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const Image(image: AssetImage(MyImages.staticSuccessIllustration)),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Title & Subtitle
              Text(MyText.yourAccountCreatedTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwItem),
              Text(MyText.yourAccountCreatedSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: const Text(MyText.myContinue))),
            ],
          ),
        ),
      ),
    );
  }
}
