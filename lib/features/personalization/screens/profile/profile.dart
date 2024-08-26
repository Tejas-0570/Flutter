import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mad_project/common/widgets/appbar/appbar.dart';
import 'package:mad_project/common/widgets/images/circular_image.dart';
import 'package:mad_project/common/widgets/texts/section_heading.dart';
import 'package:mad_project/features/personalization/screens/profile/widgets/profile_menu.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(showBackArrow: true, title: Text('Profile')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const MyCircularImage(
                        image: MyImages.userImage, height: 100, width: 100),
                    TextButton(
                        onPressed: () {},
                        child: const Text('Change Profile Picture')),
                  ],
                ),
              ),
              const SizedBox(height: MySizes.spaceBtwItem / 2),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItem / 2),
              const MySectionHeading(
                  title: 'Profile Information', showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItem),
              MyProfileMenu(
                  title: 'Name', value: 'Tejas Waydande', onPressed: () {}),
              MyProfileMenu(
                  title: 'Username',
                  value: 'tejaswaydande07',
                  onPressed: () {}),
              const SizedBox(height: MySizes.spaceBtwItem / 2),
              const Divider(),
              const SizedBox(height: MySizes.spaceBtwItem / 2),
              const MySectionHeading(
                  title: 'Personal Information', showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItem),
              MyProfileMenu(
                  title: 'User ID',
                  value: '12345',
                  icon: Iconsax.copy,
                  onPressed: () {}),
              MyProfileMenu(
                  title: 'E-mail',
                  value: 'tejaswaydande00@gmial.com',
                  onPressed: () {}),
              MyProfileMenu(
                  title: 'Phone Number', value: '0123456789', onPressed: () {}),
              MyProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              MyProfileMenu(
                  title: 'Date of Birth',
                  value: '20 Nov, 2002',
                  onPressed: () {}),
              const SizedBox(height: MySizes.spaceBtwItem / 2),
              const Divider(),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Delete Account',
                      style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
