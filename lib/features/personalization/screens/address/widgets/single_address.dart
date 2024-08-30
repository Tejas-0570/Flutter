import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class MySingleAddress extends StatelessWidget {
  const MySingleAddress({
    super.key,
    required this.selectedAddress,
  });

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunction.isDarkMode(context);
    return MyCircularContainer(
      padding: const EdgeInsets.all(MySizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress
          ? MyColor.primaryColor.withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? MyColor.darkerGrey
              : MyColor.grey,
      margin: const EdgeInsets.only(bottom: MySizes.spaceBtwItem),
      child: Stack(
        children: [
          Positioned(
              top: 0,
              right: 5,
              child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                  color: selectedAddress
                      ? dark
                          ? MyColor.light
                          : MyColor.dark
                      : null)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tejas Waydande',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: MySizes.sm / 2),
              const Text('9518XXXX70', maxLines: 1, overflow: TextOverflow.ellipsis),
              const SizedBox(height: MySizes.sm / 2),
              const Text('A/p Bhatumbare, Tal- Pandharpur, Dist- Solapur', maxLines: 2, overflow: TextOverflow.ellipsis),


            ],
          ),
        ],
      ),
    );
  }
}
