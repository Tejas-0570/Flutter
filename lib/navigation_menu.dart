import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/features/personalization/screens/settings/settings.dart';
import 'package:mad_project/features/shop/screens/store/store.dart';
import 'package:mad_project/features/shop/screens/wishlist/wishlist.dart';
import 'package:mad_project/utils/constants/colors.dart';
import 'package:mad_project/utils/helpers/helper_functions.dart';

import 'features/shop/screens/home/home.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = MyHelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectIndex.value,
          onDestinationSelected: (index) => controller.selectIndex.value = index,
          backgroundColor: darkMode ? MyColor.black : Colors.white,
          indicatorColor: darkMode ? MyColor.white.withOpacity(0.1) : MyColor.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),

      body: Obx(() => controller.screens[controller.selectIndex.value]),
    );
  }
}


class NavigationController extends GetxController {
  final Rx<int> selectIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const SettingsScreen(),
  ];
}