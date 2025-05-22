import 'package:flutter/cupertino.dart';
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
        SizedBox(height: 56),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 64.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    height: 434,
                    width: 382,
                    decoration: BoxDecoration(
                      color: AppColors.orange2,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Transform.rotate(
                    angle: 0.2,

                    child: Container(
                      height: 434,
                      width: 382,
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
                    height: 380,
                    width: 720,
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
        ),
        SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
            ],
          ),
        ),
      ],
    );
  }
}
