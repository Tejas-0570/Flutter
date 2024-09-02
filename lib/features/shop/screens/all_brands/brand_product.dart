import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/product_cart/brand_card.dart';
import 'package:mad_project/common/widgets/product_cart/sortable/sortable_products.dart';

import '../../../../utils/constants/sizes.dart';

class BrandProduct extends StatelessWidget {
  const BrandProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: Text('Nike'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              ///Brand Detail
              MyBrandCard(showBorder: true),
              SizedBox(height: MySizes.spaceBtwSection),

              MySortableProducts(),

            ],
          ),
        ),
      ),
    );
  }
}
