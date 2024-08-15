
import 'package:flutter/material.dart';
import 'package:mad_project/common/widgets/custom_shapes/curved_edges/curved_edge.dart';
import '../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../common/widgets/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curve_edge_widget.dart';
import '../../../../utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
