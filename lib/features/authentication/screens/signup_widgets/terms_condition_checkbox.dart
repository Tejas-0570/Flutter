import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mad_project/features/authentication/controllers/signup/signup_controller.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class MyTermsAndConditions extends StatelessWidget {
  const MyTermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    final controller = SignupController.instance;
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Obx(() => Checkbox(value: controller.privacyPolicy.value, onChanged: (value) => controller.privacyPolicy.value = !controller.privacyPolicy.value))),
        const SizedBox(width: MySizes.spaceBtwItem),
        Text.rich(
          TextSpan(children: [
            TextSpan(text: '${MyText.iAgreeTo}  ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: '${MyText.privacyPolicy} ', style: Theme.of(context).textTheme.labelMedium!.apply(
              color: dark ? MyColor.white : MyColor.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: dark ? MyColor.white : MyColor.primaryColor,
            )),
            TextSpan(text: '  ${MyText.and}  ', style: Theme.of(context).textTheme.bodySmall),
            TextSpan(text: MyText.termsAndConditions, style: Theme.of(context).textTheme.labelMedium!.apply(
              color: dark ? MyColor.white : MyColor.primaryColor,
              decoration: TextDecoration.underline,
              decorationColor: dark ? MyColor.white : MyColor.primaryColor,
            )),
          ]),
        ),
      ],
    );
  }
}