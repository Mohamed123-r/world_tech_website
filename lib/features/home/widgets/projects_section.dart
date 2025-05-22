import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../generated/assets.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({super.key, required this.projectView});

  final VoidCallback projectView;

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  final ScrollController _controller = ScrollController();
  static const int loopingFactor = 50;
  static const int projectsCount = 5;
  late final int _middleIndex;

  @override
  void initState() {
    super.initState();
    _middleIndex = (loopingFactor * projectsCount) ~/ 2;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenWidth = MediaQuery.of(context).size.width;
      final itemWidth = screenWidth * 0.75 + 40; // عرض العنصر + الهوامش
      final centerOffset = (itemWidth - screenWidth) / 2;

      _controller.jumpTo(_middleIndex * itemWidth - centerOffset);
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final itemWidth = screenWidth * 0.75;

    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 30,
              ),
              child: Image.asset(
                Assets.imagesProgectsTitleimage,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.width / 30,
              ),
              child: Text(
                "قصص نجاحنا مع عملائنا\n تصفح اخر أعمالنا ",
                textAlign: TextAlign.center,
                style: AppTextStyles.style22w500(context),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: MediaQuery.of(context).size.width / 2.5 ,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(
              dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
            ),
            child: ListView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final realIndex = index % projectsCount;
                return Container(

                  width: itemWidth,
                  margin:  EdgeInsets.symmetric(horizontal:
                     24
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                       SizedBox(width:  MediaQuery.of(context).size.width / 30),
                      Image.asset(
                        Assets.imagesProgetTest,

                        height: MediaQuery.of(context).size.width / 2.5,
                      ),
                       SizedBox(width: MediaQuery.of(context).size.width / 30),
                      Expanded(
                        child: Padding(
                          padding:  EdgeInsets.only(
                            top: MediaQuery.of(context).size.width / 30,
                            bottom: MediaQuery.of(context).size.width / 20,
                            right: MediaQuery.of(context).size.width / 40,
                            left:  MediaQuery.of(context).size.width / 40
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Gas Home App",
                                style:

                                MediaQuery.of(context).size.width < 850 ?
                                AppTextStyles.style26w500(
                                  context,
                                ).copyWith(
                                  fontFamily: "FingerPaint",
                                  color: AppColors.darkerGrey,
                                ):


                                AppTextStyles.style40w500(
                                  context,
                                ).copyWith(
                                  fontFamily: "FingerPaint",
                                  color: AppColors.darkerGrey,
                                ),
                              ),
                               SizedBox(height:

                               MediaQuery.of(context).size.width < 850 ?
                               8
                               :
                               24),
                              Text(
                                "نقدم حلول برمجية متكاملة لأنظمة الحاسوب (Windows, macOS, Linux) مصممة خصيصًا لتناسب متطلبات عملك، سواء كانت تطبيقات إدارية، برامج محاسبة، أو أدوات إنتاجية متقدمة...",
                                maxLines:MediaQuery.of(context).size.width < 850 ? 6: 8,
                                overflow: TextOverflow.ellipsis,
                                style:MediaQuery.of(context).size.width < 850 ?
                                AppTextStyles.style16w500(context):
                                AppTextStyles.style20w500(context),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                );
              },
              itemCount: loopingFactor * projectsCount,
            ),
          ),
        ),
         SizedBox(height:

         MediaQuery.of(context).size.width < 850 ?
         16
         :
         32
         ),
        MaterialButton(
          onPressed: widget.projectView,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(

              MediaQuery.of(context).size.width < 600 ?
              12 :
              MediaQuery.of(context).size.width < 1200 ?
              16 :
              24
            ),
          ),
          height: MediaQuery.of(context).size.width < 600 ?
          48 :
          MediaQuery.of(context).size.width < 1200 ?
          56 :
          72,
          minWidth: MediaQuery.of(context).size.width < 600 ?
          150 :
          MediaQuery.of(context).size.width < 1200 ?
          200 :
          300
          ,
          color: AppColors.orange,
          child: Text(
            "عرض جميع المشاريع",
            style:

            MediaQuery.of(context).size.width < 600 ?
            AppTextStyles.style16w500(
              context,
            ).copyWith(color: AppColors.white) :
            MediaQuery.of(context).size.width < 1200 ?
            AppTextStyles.style22w500(
              context,
            ).copyWith(color: AppColors.white) :
            AppTextStyles.style24w500(
              context,
            ).copyWith(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
