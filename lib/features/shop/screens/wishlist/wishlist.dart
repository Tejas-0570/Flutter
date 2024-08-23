import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/icons/wishlist_icon.dart';
import 'package:mad_project/common/widgets/layouts/grid_layout.dart';
import 'package:mad_project/common/widgets/product_cart/product_card_vertical.dart';
import 'package:mad_project/features/shop/screens/home/home.dart';

import '../../../../utils/constants/sizes.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Wishlist', style: Theme
            .of(context)
            .textTheme
            .headlineMedium),
        actions: [
          MyWishlistIcon(
              icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen())),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [MyGridLayout(itemCount: 8, itemBuilder: (_, index) => const MyProductCardVertical())],
          ),
        ),
      ),
    );
  }
}
