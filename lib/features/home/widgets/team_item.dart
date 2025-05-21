import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';

class TeamItem extends StatelessWidget {
  const TeamItem({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.imagePath,
    required this.color,
  });

  final String firstName;
  final String lastName;
  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: 220,
            height: 414,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(600),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    firstName,
                    style: AppTextStyles.style26w500(
                      context,
                    ).copyWith(color: AppColors.white),
                  ),
                  Text(
                    lastName,
                    style: AppTextStyles.style22w500(
                      context,
                    ).copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 42),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(600),
                        child: Image.asset(
                          imagePath,
                          width: 220,
                          height: 266,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: -370,
                        child: Container(
                          width: 220,
                          height: 414,
                          decoration: BoxDecoration(
                            color: Color(0xffE9FE00),
                            borderRadius: BorderRadius.circular(600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
