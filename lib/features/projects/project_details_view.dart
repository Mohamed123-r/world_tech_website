import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';
import '../../core/utils/app_text_style.dart';
import '../../generated/assets.dart';
import '../home/widgets/footer_section.dart';

class ProjectDetailsView extends StatelessWidget {
  const ProjectDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.width < 850 ? 16 : 32,
                ),
                Text(
                  "Gas Home App",
                  style: AppTextStyles.style40w500(context).copyWith(
                    fontFamily: "FingerPaint",
                    color: AppColors.darkerGrey,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width < 850 ? 16 : 32,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: MediaQuery.of(context).size.width / 30),
                      Image.asset(
                        Assets.imagesProgetTest,

                        height: MediaQuery.of(context).size.width / 3,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width / 30),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(32),
                          child: SizedBox(
                            height:
                                MediaQuery.of(context).size.width < 850
                                    ? 300
                                    : 400,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,

                              children: [
                                Text(
                                  "نقدم حلول برمجية متكاملة لأنظمة الحاسوب (Windows, macOS, Linux) مصممة خصيصًا لتناسب متطلبات عملك، سواء كانت تطبيقات إدارية، برامج محاسبة، أو أدوات إنتاجية متقدمة...",
                                  maxLines:
                                      MediaQuery.of(context).size.width < 850
                                          ? 6
                                          : 8,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      MediaQuery.of(context).size.width < 850
                                          ? AppTextStyles.style16w500(context)
                                          : AppTextStyles.style20w500(context),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      Assets.imagesIosButton,
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                    ),
                                    const SizedBox(width: 16),
                                    Image.asset(
                                      Assets.imagesAndroidButton,
                                      width:
                                          MediaQuery.of(context).size.width / 6,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 20,
                      ),
                      child: Image.asset(
                        Assets.imagesBackgroundProjectDetails,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 7,
                      ),
                      child: Image.asset(
                        Assets.imagesProjectDitails,
                        width: double.infinity,
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 4,
                  ),
                  child: Image.asset(
                    Assets.imagesApplicationFeatures,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  decoration: BoxDecoration(
                    color: AppColors.whiteGrey,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child:

                  MediaQuery.of(context).size.width < 850
                      ? Column(

                          children: [
                            _buildFeatureItem(
                              context,
                              "1. سهولة الاستخدام",
                              "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                            ),
                            _buildFeatureItem(
                              context,
                              "2.  خدمة على مدار الساعة",
                              "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                            ),
                            _buildFeatureItem(

                              context,
                              "3.  خدمة على مدار الساعة",
                              "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                            ),

                            _buildFeatureItem(
                              context,
                              "4.  خدمة على مدار الساعة",
                              "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                            ),
                            _buildFeatureItem(
                              context,
                              "5.  خدمة على مدار الساعة",
                              "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                            ),
                            _buildFeatureItem(
                              context,
                              "6.  خدمة على مدار الساعة",
                              "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Column(
                              children: [
                                _buildFeatureItem(
                                  context,
                                  "1. سهولة الاستخدام",
                                  "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                                ),
                                _buildFeatureItem(
                                  context,
                                  "2.  خدمة على مدار الساعة",
                                  "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                                ),
                                _buildFeatureItem(
                                  context,
                                  "3.  خدمة على مدار الساعة",
                                  "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                _buildFeatureItem(
                                  context,
                                  "4.  خدمة على مدار الساعة",
                                  "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                                ),
                                _buildFeatureItem(
                                  context,
                                  "5.  خدمة على مدار الساعة",
                                  "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                                ),
                                _buildFeatureItem(
                                  context,
                                  "6.  خدمة على مدار الساعة",
                                  "واجهة بسيطة وسهلة تجعل طلب أسطوانة الغاز يتم في ثوانٍ قليلة دون أي تعقيد.",
                                ),
                              ],
                            ),
                          ],
                        ),
                ),



                SizedBox(height: 64),

                FooterSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

class _buildFeatureItem extends StatelessWidget {
  final String title;
  final String desc;
  _buildFeatureItem(this.context, this.title, this.desc);
  final BuildContext context;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.style20w500(context),
          ),
          const SizedBox(height: 16),
          Text(
            desc,
            style: AppTextStyles.style20w500(context).copyWith(
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}