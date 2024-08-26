import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../images/circular_image.dart';


class MyUserProfileTile extends StatelessWidget {
  const MyUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const MyCircularImage(
        image: MyImages.userImage,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text('Tejas Waydande', style: Theme.of(context).textTheme.headlineSmall!.apply(color: MyColor.white)),
      subtitle: Text('tejaswaydande@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color: MyColor.white)),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: MyColor.white)),
    );
  }
}