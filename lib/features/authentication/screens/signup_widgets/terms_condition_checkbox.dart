import 'package:flutter/material.dart';

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
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
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