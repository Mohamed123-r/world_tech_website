import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../generated/assets.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 180.0),
              child: Image.asset(
                Assets.imagesProgectsTitleimage,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Text(
                "قصص نجاحنا مع عملائنا\n تصفح اخر أعمالنا ",
                textAlign: TextAlign.center,
                style: AppTextStyles.style24w500(context),
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        SizedBox(
          height: 380,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(
              dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
            ),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,

              itemBuilder:
                  (context, index) => Padding(
                padding: EdgeInsets.only(
                  right: index == 0 ? 32 : 0,
                  left: index == 4 ? 32 : 0,
                ),
                child: Container(
                  height: 380,
                  width: 1000,
                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 44),
                      Image.asset(
                        Assets.imagesProgetTest,
                        width: 264,
                        height: 380,
                      ),
                      SizedBox(width: 82),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 32.0,
                            bottom: 60,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,

                            children: [
                              Text(
                                "Gas Home App",
                                style: AppTextStyles.style40w500(
                                  context,
                                ).copyWith(
                                  fontFamily: "FingerPaint",
                                  color: AppColors.darkerGrey,
                                ),
                              ),
                              SizedBox(height: 48),
                              Text(
                                "نقدم حلول برمجية متكاملة لأنظمة الحاسوب (Windows, macOS, Linux) مصممة خصيصًا لتناسب متطلبات عملك، سواء كانت تطبيقات إدارية، برامج محاسبة، أو أدوات إنتاجية متقدمة. نركز على الأداء العالي، واجهات سهلة التخصيص، والتكامل مع الأنظمة الأخرى لضمان كفاءة تشغيلية تواكب تطور شركتك.",
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.style20w500(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 44),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(width: 40),
              itemCount: 5,
            ),
          ),
        ),

        SizedBox(height: 32),
        MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          height: 72,
          minWidth: 300,
          color: AppColors.orange,
          child: Text(
            "عرض جميع المشاريع",
            style: AppTextStyles.style24w500(
              context,
            ).copyWith(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}

