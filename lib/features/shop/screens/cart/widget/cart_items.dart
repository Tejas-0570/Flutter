import 'package:flutter/material.dart';

import '../../../../../common/widgets/product_cart/product_pricr_text.dart';
import '../../../../../utils/constants/sizes.dart';
import '../add_remove_button.dart';
import '../cart_item.dart';

class MyCartItems extends StatelessWidget {
  const MyCartItems({
    super.key, this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 2,
      separatorBuilder: (_, __) => const SizedBox(height: MySizes.spaceBtwSection),
      itemBuilder: (_, index) =>
        Column(
        children: [
          const MyCartItem(),
          if(showAddRemoveButton) const SizedBox(height: MySizes.spaceBtwItem),

          if(showAddRemoveButton)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70),
                  ///Add Remove Buttons
                  ProductQuantityWithAddRemoveButton(),

                ],
              ),
              MyProductPriceText(price: '1499')
            ],
          ),
        ],
      ),
    );
  }
}