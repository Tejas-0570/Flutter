import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';

import '../../../../../utils/constants/sizes.dart';

class MyBillingAddressSection extends StatelessWidget {
  const MyBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MySectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Tejas Waydande', style: Theme.of(context).textTheme.bodyMedium),
        const SizedBox(height: MySizes.spaceBtwItem / 2),
        Row(
         children: [
           const Icon(Icons.phone, color: Colors.grey, size: 16),
           const SizedBox(width: MySizes.spaceBtwItem),
           Text('0123456789', style: Theme.of(context).textTheme.bodyMedium),
         ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem / 2),

        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: MySizes.spaceBtwItem),
            Text('A/p Bhatumabare, Pandharpur', style: Theme.of(context).textTheme.bodyMedium, softWrap: true),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem / 2),



      ],
    );
  }
}
