import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class MyBillingPaymentSection extends StatelessWidget {
  const MyBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return Column(
      children: [
        MySectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: (){}),
        const SizedBox(height: MySizes.spaceBtwItem / 2),
        Row(
          children: [
            MyCircularContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? MyColor.light : MyColor.white,
              padding: const EdgeInsets.all(MySizes.sm),
              child: const Image(image: AssetImage(MyImages.googlePay), fit: BoxFit.contain),
            ),
            const SizedBox(width: MySizes.spaceBtwItem / 2),
            Text('GooglePay', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
