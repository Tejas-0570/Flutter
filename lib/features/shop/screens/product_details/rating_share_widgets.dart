import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class MyRatingAndShare extends StatelessWidget {
  const MyRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: MySizes.spaceBtwItem / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '4.5', style: Theme.of(context).textTheme.bodyLarge),
                  const TextSpan(text: '(99)'),
                ],
              ),
            ),
          ],
        ),
        IconButton(onPressed: (){}, icon: const Icon(Icons.share, size: MySizes.iconMd,)),
      ],
    );
  }
}
