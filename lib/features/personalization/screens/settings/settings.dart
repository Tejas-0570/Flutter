import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:mad_project/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:mad_project/features/personalization/screens/address/widgets/address.dart';
import 'package:mad_project/features/shop/screens/cart/cart.dart';
import 'package:mad_project/features/shop/screens/order/order.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  MyAppBar(
                    title: Text('Account', style: Theme.of(context).textTheme.headlineMedium!.apply(color: MyColor.white)),
                  ),

                  //User Profile Screen
                  MyUserProfileTile(onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: MySizes.spaceBtwSection),
                ],
              ),
            ),

            //Body

            Padding(
              padding: const EdgeInsets.all(MySizes.defaultSpace),
              child: Column(
                children: [
                  //Account Setting
                  const MySectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: MySizes.spaceBtwItem),

                  MySettingsMenuTile(
                      icon: Iconsax.safe_home,
                      title: 'My Address',
                      subTitle: 'Set your address',
                      onTap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  MySettingsMenuTile(
                      icon: Iconsax.shopping_cart,
                      title: 'My Cart',
                      subTitle: 'Add, remove products and move to checkout',
                      onTap: () => Get.to(() => const CartScreen()),
                  ),
                  MySettingsMenuTile(
                      icon: Iconsax.bag_tick,
                      title: 'My Orders',
                      subTitle: 'In Progress and Completed',
                      onTap: () => Get.to(() => const OrderScreen()),
                  ),
                  const MySettingsMenuTile(
                      icon: Iconsax.bank,
                      title: 'Bank Account',
                      subTitle: 'Withdraw balance to registered bank account'),
                  const MySettingsMenuTile(
                      icon: Iconsax.discount_shape,
                      title: 'My Coupons',
                      subTitle: 'List of all the discounted coupons'),
                  const MySettingsMenuTile(
                      icon: Iconsax.notification,
                      title: 'Notifications',
                      subTitle: 'Set any kind of notifications message'),
                  const MySettingsMenuTile(
                      icon: Iconsax.security_card,
                      title: 'Account Privacy',
                      subTitle: 'Manage data usage and connected accounts'),

                  const SizedBox(height: MySizes.spaceBtwSection),

                  const MySectionHeading(
                      title: 'App Settings', showActionButton: false),

                  const SizedBox(height: MySizes.spaceBtwItem),

                  const MySettingsMenuTile(
                      icon: Iconsax.document_upload,
                      title: 'Load Data',
                      subTitle: 'Upload Data to your Cloud Firebase'),

                  MySettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'GeoLocation',
                    subTitle: 'Set Your location',
                    trailing: Switch(value: true, onChanged: (value){}),
                  ),
                  MySettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result in safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  MySettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  const SizedBox(height: MySizes.spaceBtwSection),
                  SizedBox(
                    width: double.infinity,
                    child:
                        OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                  ),

                  const SizedBox(height: MySizes.spaceBtwSection ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
