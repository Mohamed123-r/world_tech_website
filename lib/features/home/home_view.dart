import 'package:flutter/material.dart';
import 'package:world_tech_website/core/utils/app_colors.dart';

import '../../core/widgets/custom_logo.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomLogo(),
            Container(
              height: 400,
              width: 500,
              color :AppColors.redCyan,
            ),
            Container(
              height: 400,
              width: 400,
              color :AppColors.black,
            ),
            Container(
              height: 400,
              width: 400,
              color :AppColors.vilot,
            ),
            Container(
              height: 400,
              width: 400,
              color :AppColors.green,
            ),
            Container(
              height: 400,
              width: 400,
              color :AppColors.vilotCyan,
            ),
          ],
        ),
      ),
    );
  }
}
