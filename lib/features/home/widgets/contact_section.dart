import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_style.dart';
import '../../../generated/assets.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width < 1200 ? 12 : 72.0,
      ),
      child:
          MediaQuery.of(context).size.width < 1200
              ? Column(
                children: [
                  Positioned(
                    left: 0,
                    child: Image.asset(
                      Assets.imagesContactUs,

                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Row(
                    children: [
                      Container(

                        width: MediaQuery.of(context).size.width - 24,
                        padding: EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: AppColors.whiteGrey,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "تواصل معنا",
                              style: AppTextStyles.style26w500(
                                context,
                              ).copyWith(color: AppColors.blue),
                            ),
                            SizedBox(height: 30),
                            Text(
                              "لا تتردد في طرح أفكارك، فخلف كل رسالة تصلنا فريق شغوف ينتظر بلهفة لتحويل رؤيتك إلى واقع ملموس. سواءً كان لديك سؤال، مشروع طموح، أو حتى مجرد فكرة أولية نحن هنا لنصنع لها طريقاً رقمياً ناجحاً.",
                              style: AppTextStyles.style22w500(context),
                            ),
                            SizedBox(height: 30),
                            MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              height: 48,
                              minWidth: MediaQuery.of(context).size.width / 3.5,
                              color: AppColors.green,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(Assets.imagesWhatsappLogo),
                                  SizedBox(width: 22),

                                  Text(
                                    " 104567890 20+",
                                    style: AppTextStyles.style20w500(
                                      context,
                                    ).copyWith(
                                      color: AppColors.white,
                                      fontFamily: "FingerPaint",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
              : Stack(
                alignment: Alignment.center,
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 330,
                        width: 770,
                        padding: EdgeInsets.only(
                          right: 42,
                          top: 32,
                          bottom: 32,
                          left: 295,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.whiteGrey,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "تواصل معنا",
                              style: AppTextStyles.style26w500(
                                context,
                              ).copyWith(color: AppColors.blue),
                            ),
                            SizedBox(height: 30),
                            Text(
                              "لا تتردد في طرح أفكارك، فخلف كل رسالة تصلنا فريق شغوف ينتظر بلهفة لتحويل رؤيتك إلى واقع ملموس. سواءً كان لديك سؤال، مشروع طموح، أو حتى مجرد فكرة أولية نحن هنا لنصنع لها طريقاً رقمياً ناجحاً.",
                              style: AppTextStyles.style22w500(context),
                            ),
                            SizedBox(height: 30),
                            MaterialButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                              height: 48,
                              minWidth: 222,
                              color: AppColors.green,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(Assets.imagesWhatsappLogo),
                                  SizedBox(width: 22),

                                  Text(
                                    " 104567890 20+",
                                    style: AppTextStyles.style20w500(
                                      context,
                                    ).copyWith(
                                      color: AppColors.white,
                                      fontFamily: "FingerPaint",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 0,
                    child: Image.asset(
                      Assets.imagesContactUs,
                      height: 525,
                      width: 625,
                    ),
                  ),
                ],
              ),
    );
  }
}
