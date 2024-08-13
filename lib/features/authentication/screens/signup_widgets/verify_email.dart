import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/common/widgets.login_signup/success_screen/success_screen.dart';
import 'package:mad_project/utils/constants/image_strings.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../login/login.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView( // This function is used when device screen is small then our code adjust according to device size
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              //Image
              const Image(image: AssetImage(MyImages.deliveredEmailIllustration)),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Title & Subtitle
              Text(MyText.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwItem),
              Text('support@aura.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwItem),
              Text(MyText.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Button
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const SuccessScreen()), child: const Text(MyText.myContinue))),
              const SizedBox(height: MySizes.spaceBtwItem),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(MyText.resendEmail))),
              const SizedBox(height: MySizes.spaceBtwItem),

            ],

          ),

        ),
      ),
    );
  }
}
