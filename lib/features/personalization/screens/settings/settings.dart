import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:mad_project/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';

import '../../../../common/widgets/list_tiles/user_profile_tile.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

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
                  const MyUserProfileTile(),
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
                  const MySectionHeading(title: 'Account Settings', showActionButton: false),
                  const SizedBox(height: MySizes.spaceBtwItem),

                  MySettingsMenuTile(icon: Iconsax.safe_home, title: 'My Address', subTitle: 'Set your address', onTap: (){}),
                ],
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

