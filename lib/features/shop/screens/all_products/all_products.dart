import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/product_cart/sortable/sortable_products.dart';
import '../../../../utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
          title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: MySortableProducts(),
        ),
      ),
    );
  }
}

