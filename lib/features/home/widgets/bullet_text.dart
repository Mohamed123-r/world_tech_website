import 'package:flutter/material.dart';

import '../../../core/utils/app_text_style.dart';

class BulletText extends StatelessWidget {
  final String text;

  const BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start
          ,mainAxisSize: MainAxisSize.min,
        children: [
          Text(text, style: AppTextStyles.style20w500(context)),
          SizedBox(width: 8),
          Text('• ', style: AppTextStyles.style20w500(context)),
        ],
      ),
    );
  }
}

