import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class MyBillingAmountSection extends StatelessWidget {
  const MyBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///SubTotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SubTotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹1499', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem / 2),

        ///Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹100', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem / 2),


        ///Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('₹100', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem / 2),


        ///Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.titleMedium),
            Text('₹1699', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItem / 2),
      ],
    );
  }
}
