import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_text_style.dart';

class FooterItem extends StatelessWidget {
  const FooterItem({super.key, required this.image, required this.text});

  final String image;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(image),
        SizedBox(width: 24),
        Expanded(child: Text(text, style: AppTextStyles.style16w500(context))),
      ],
    );
  }
}
