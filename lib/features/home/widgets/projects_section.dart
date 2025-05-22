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
        const SizedBox(height: 24),
        SizedBox(
          height: 380,
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
                  height: 380,
                  width: itemWidth,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 44),
                      Image.asset(
                        Assets.imagesProgetTest,
                        width: 264,
                        height: 380,
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: 32.0,
                            bottom: 60,
                            right: 16,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Gas Home App",
                                style: AppTextStyles.style40w500(context).copyWith(
                                  fontFamily: "FingerPaint",
                                  color: AppColors.darkerGrey,
                                ),
                              ),
                              const SizedBox(height: 24),
                              Text(
                                "نقدم حلول برمجية متكاملة لأنظمة الحاسوب (Windows, macOS, Linux) مصممة خصيصًا لتناسب متطلبات عملك، سواء كانت تطبيقات إدارية، برامج محاسبة، أو أدوات إنتاجية متقدمة...",
                                maxLines: 8,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.style20w500(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                );
              },
              itemCount: loopingFactor * projectsCount,
            ),
          ),
        ),
        const SizedBox(height: 32),
        MaterialButton(
          onPressed: widget.projectView,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          height: 72,
          minWidth: 300,
          color: AppColors.orange,
          child: Text(
            "عرض جميع المشاريع",
            style: AppTextStyles.style24w500(context).copyWith(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}
