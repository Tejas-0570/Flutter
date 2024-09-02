import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/sizes.dart';
import '../../layouts/grid_layout.dart';
import '../product_card_vertical.dart';


class MySortableProducts extends StatelessWidget {
  const MySortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        ///Dropdown
        DropdownButtonFormField(decoration: const InputDecoration(
            prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: [
            'Name',
            'Higher Price',
            'Lower Price',
            'Sale',
            'Newest',
            'Popularity'
          ].map((option) => DropdownMenuItem(value: option ,child: Text(option))).toList(),
        ),
        const SizedBox(height: MySizes.spaceBtwSection),
        ///Product
        MyGridLayout(itemCount: 14, itemBuilder: (_, index) => const MyProductCardVertical())
      ],

    );
  }
}