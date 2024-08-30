import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/product_cart/product_pricr_text.dart';

import '../../../../utils/constants/sizes.dart';
import 'add_remove_button.dart';
import 'cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          showBackArrow: true,
          title: Text('Cart', style: Theme
              .of(context)
              .textTheme
              .headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 10,
          separatorBuilder: (_, __) =>
          const SizedBox(height: MySizes.spaceBtwSection),
          itemBuilder: (_, index) =>
          const Column(
            children: [
              MyCartItem(),
              SizedBox(height: MySizes.spaceBtwItem),

              Row(
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
        ),
      ),


      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MySizes.defaultSpace),
        child: ElevatedButton(onPressed: (){}, child: const Text('Checkout ₹1499'),),
      ),
    );
  }
}

