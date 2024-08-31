import 'package:flutter/material.dart';
import 'package:mad_project/common/styles/spacing_styles.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key, required this.image, required this.title, required this.subTitle, required this.onPressed,});

  final String image, title, subTitle;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(image: AssetImage(image), width: MyHelperFunction.screenWidth() * 0.6),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Title & Subtitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwItem),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: MySizes.spaceBtwSection),

              //Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(MyText.myContinue))),
            ],
          ),
        ),
      ),
    );
  }
}
