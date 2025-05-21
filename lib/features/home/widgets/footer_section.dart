import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../core/widgets/custom_logo.dart';
import '../../../generated/assets.dart';
import 'footer_item.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.whiteGrey),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("تواصل معنا", style: AppTextStyles.style22w500(context)),
          Row(
            children: [
              SizedBox(width: 32),
              Image.asset(Assets.imagesFacebook, width: 28, height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(height: 28, width: 2, color: AppColors.grey),
              ),
              Image.asset(Assets.imagesInstgram, width: 28, height: 28),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(height: 28, width: 2, color: AppColors.grey),
              ),

              Image.asset(Assets.imagesWhatsapp, width: 28, height: 28),
              Spacer(),
              CustomLogo(),
            ],
          ),
          Divider(color: AppColors.grey, thickness: 1),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 24,

              children: [
                FooterItem(
                  image: Assets.imagesLock,
                  text:
                  "أداء استثنائي لمشاريعك البرمجية نطور حلولًا برمجية ذات كفاءة عالية وقابلة للتطوير، باستخدام أحدث التقنيات لضمان أداء قوي وسلس يحقق أهداف عملك باحترافية.",
                ),
                FooterItem(
                  image: Assets.imagesShield,
                  text:
                  "تنفيذ سريع ودقيق نلتزم بجدول زمني محدد دون تأخير، نقدم لك مشاريعك بجودة عالية وفي الوقت المتفق عليه، لأننا نقدّر قيمة وقتك وثقتك بنا.",
                ),
                FooterItem(
                  image: Assets.imagesArrowsClockwise,
                  text:
                  "تسليم آمن وفي الموعد المحدد نسلّم مشاريعك بكامل أمانها وسريتها، مع ضمان وصولك للحل النهائي في الوقت الموعود، لأن التزامنا بالجودة والوقت هو أساس نجاحنا.",
                ),
                FooterItem(
                  image: Assets.imagesHeadset,
                  text:
                  "دعم فني متاح على مدار الساعة فريق دعم العملاء لدينا جاهز لمساعدتك في أي وقت، نضمن لك ردًا سريعًا وحلولًا فعّالة لكل استفسار أو مشكلة تواجهك خلال رحلتك معنا.",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

