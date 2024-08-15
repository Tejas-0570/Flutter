import 'package:flutter/material.dart';
import 'package:mad_project/features/shop/screens/home/widgets/home_appbar.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  MyHomeAppBar(),

                  //Search Bar



                  //Category
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
