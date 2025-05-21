import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../generated/assets.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key, required this.sectionKeys});

  final List<GlobalKey<State<StatefulWidget>>> sectionKeys;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: sectionKeys[1],
      margin: EdgeInsetsDirectional.symmetric(horizontal: 32),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 55, vertical: 40),
      height: 1200,
      width: double.infinity,

      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Column(
        children: [
          Text(
            "نقدم لك خدماتنا المميزة",
            style: AppTextStyles.style24w500(context),
          ),
          SizedBox(height: 32),
          Row(
            children: [
              Image.asset(Assets.imagesUpBannerTest, width: 332, height: 332),
              SizedBox(width: 24),
              Expanded(
                child: Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 32,
                    top: 24,
                    end: 120,
                    bottom: 48,
                  ),
                  height: 332,

                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "مواقع الويب بوابتك إلى العالم الرقمي",
                        style: AppTextStyles.style20w500(context),
                      ),
                      SizedBox(height: 48),
                      Text(
                        "في World Tech، نصنع مواقع ويب احترافية وجذابة تُعبر عن هوية علامتك التجارية باحترافية. سواء كنت بحاجة إلى موقع شخصي، ",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.style20w500(context),
                      ),
                      SizedBox(height: 12),
                      Text(
                        " متجر إلكتروني، أو منصة متكاملة، نضمن لك تصميمًا سلسًا، تجربة مستخدم متميزة، وأداءً عالي السرعة. ",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.style20w500(context),
                      ),
                      SizedBox(height: 12),
                      Text(
                        " نواكب أحدث التقنيات لنمنحك موقعًا يتفوق على المنافسين ويحقق أهدافك بفعالية.",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.style20w500(context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 32,
                    top: 24,
                    end: 120,
                    bottom: 28,
                  ),
                  height: 332,

                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "تطبيقات الهاتف: ابتكار في جيب عملائك",
                        style: AppTextStyles.style20w500(context),
                      ),
                      SizedBox(height: 48),
                      Text(
                        "نطور تطبيقات هاتف ذكية ومبتكرة تلبي احتياجات المستخدمين على نظامي Android و iOS.",

                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.style20w500(context),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "من التطبيقات التجارية والتعليمية إلى التطبيقات الترفيهية والخدمية، نضمن واجهات سهلة الاستخدام، أداءً سريعًا، وأعلى معايير الأمان. فريقنا يحول أفكارك إلى تطبيقات تفاعلية تزيد من ولاء العملاء وتنمو مع أعمالك.",

                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.style20w500(context),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 24),
              Image.asset(Assets.imagesUpBanner1, width: 332, height: 332),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Image.asset(Assets.imagesUpBanner2, width: 332, height: 332),
              SizedBox(width: 24),
              Expanded(
                child: Container(
                  padding: EdgeInsetsDirectional.only(
                    start: 32,
                    top: 24,
                    end: 120,
                    bottom: 48,
                  ),
                  height: 332,

                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "تطبيقات الحاسوب: قوة الأداء والاحترافية",
                        style: AppTextStyles.style20w500(context),
                      ),
                      SizedBox(height: 48),
                      Text(
                        "نقدم حلول برمجية متكاملة لأنظمة الحاسوب (Windows, macOS, Linux) مصممة خصيصًا لتناسب متطلبات عملك، سواء كانت تطبيقات إدارية،",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.style20w500(context),
                      ),
                      SizedBox(height: 12),
                      Text(
                        " برامج محاسبة، أو أدوات إنتاجية متقدمة. نركز على الأداء العالي، واجهات سهلة التخصيص، والتكامل مع الأنظمة الأخرى لضمان كفاءة تشغيلية تواكب تطور شركتك. ",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyles.style20w500(context),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
