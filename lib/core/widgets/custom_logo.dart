import 'package:flutter/material.dart';
import '../../generated/assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_style.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [


        Text(
          'Word Tech',
          style: AppTextStyles.style20w700(
            context,
          ).copyWith(color: AppColors.vilot),
        ),
        SizedBox(width:(MediaQuery.of(context).size.width / 50)-8),
        Image.asset(
          Assets.imagesLogo,
          width: MediaQuery.of(context).size.width / 20,
        ),
      ],
    );
  }
}
