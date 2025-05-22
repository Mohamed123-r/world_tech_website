import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_tech_website/features/home/widgets/team_item.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../generated/assets.dart';
import 'bullet_text.dart';

class TeamSection extends StatelessWidget {
  const TeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "تعرف علي فريق العمل لدينا",
          style: AppTextStyles.style32w500(context),
        ),
        SizedBox(height: MediaQuery.of(context).size.width < 600 ? 24 : 56),
        MediaQuery.of(context).size.width < 600
            ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 2,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        color: AppColors.orange2,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.2,

                      child: Container(
                        height: MediaQuery.of(context).size.width / 2,
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                          color: AppColors.whiteGrey,
                          image: DecorationImage(
                            image: AssetImage(Assets.imagesImageTest),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesTeamLeaderBackround,

                      width: MediaQuery.of(context).size.width / 1.5,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        Text(
                          "Mohammed Hanfy",
                          style: AppTextStyles.style32w500(context).copyWith(
                            fontFamily: "FingerPaint",
                            color: AppColors.yellow,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 40,
                        ),
                        const BulletText(text: 'Business Management'),
                        const BulletText(text: 'Flutter Developer'),
                        const BulletText(text: 'System Analysis'),
                        const BulletText(text: 'Flutter Instructor'),
                      ],
                    ),
                  ],
                ),
              ],
            )
            : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width / 3,
                      width: MediaQuery.of(context).size.width / 3.5,
                      decoration: BoxDecoration(
                        color: AppColors.orange2,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Transform.rotate(
                      angle: 0.2,

                      child: Container(
                        height: MediaQuery.of(context).size.width / 3,
                        width: MediaQuery.of(context).size.width / 3.5,
                        decoration: BoxDecoration(
                          color: AppColors.whiteGrey,
                          image: DecorationImage(
                            image: AssetImage(Assets.imagesImageTest),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ],
                ),

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      Assets.imagesTeamLeaderBackround,

                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,

                      children: [
                        Text(
                          "Mohammed Hanfy",
                          style: AppTextStyles.style32w500(context).copyWith(
                            fontFamily: "FingerPaint",
                            color: AppColors.yellow,
                          ),
                        ),
                        SizedBox(height: 32),
                        const BulletText(text: 'Business Management'),
                        const BulletText(text: 'Flutter Developer'),
                        const BulletText(text: 'System Analysis'),
                        const BulletText(text: 'Flutter Instructor'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
        SizedBox(height: 24),
        SizedBox(
          height: 440,
          width: double.infinity,
          child: LayoutBuilder(
            builder: (context, constraints) {
              final items = [
                TeamItem(
                  firstName: "Ahmed",
                  lastName: "Saleh",
                  imagePath: Assets.imagesTeamImage1,
                  color: AppColors.vilot,
                ),
                TeamItem(
                  firstName: "Mohamed Rushdy",
                  lastName: "Saleh",
                  imagePath: Assets.imagesTeamItem2,
                  color: AppColors.redCyan,
                ),
                TeamItem(
                  firstName: "Mohammed",
                  lastName: "Abd El-Hady",
                  imagePath: Assets.imagesTeamItem3,
                  color: AppColors.vilotCyan,
                ),
                TeamItem(
                  firstName: "Mahmoud",
                  lastName: "Abd El-Hameed",
                  imagePath: Assets.imagesTeamItem4,
                  color: AppColors.orange,
                ),
                TeamItem(
                  firstName: "Abd El-Mageed",
                  lastName: "Hamdy",
                  imagePath: Assets.imagesTeamItem5,
                  color: AppColors.blueCyan,
                ),
              ];

              const itemWidth = 220.0;
              final totalWidth = items.length * itemWidth;

              if (totalWidth < constraints.maxWidth) {
                // العناصر أقل من عرض الشاشة → وسطهم
                return Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children:
                        items
                            .map(
                              (item) => SizedBox(width: itemWidth, child: item),
                            )
                            .toList(),
                  ),
                );
              } else {
                // العناصر أكبر من الشاشة → Scroll أفقي + دعم الماوس
                return ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(
                    scrollbars: false,
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
                  ),
                  child: Scrollbar(
                    thumbVisibility: true,
                    controller: ScrollController(),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      physics: const ClampingScrollPhysics(),
                      children:
                          items
                              .map(
                                (item) =>
                                    SizedBox(width: itemWidth, child: item),
                              )
                              .toList(),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
