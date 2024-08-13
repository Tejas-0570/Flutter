import 'package:flutter/material.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';


class MyLoginHeader extends StatelessWidget {
  const MyLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? MyImages.lightAppLogo : MyImages.darkAppLogo),
        ),
        Text(MyText.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: MySizes.sm),
        Text(MyText.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
