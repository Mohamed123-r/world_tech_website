import 'package:flutter/material.dart';
import 'package:world_tech_website/core/utils/app_colors.dart';
import 'package:world_tech_website/core/utils/app_text_style.dart';

import '../../generated/assets.dart';

class ProjectView extends StatefulWidget {
  const ProjectView({super.key});

  @override
  State<ProjectView> createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  bool isMobile = true;
  bool isWib = false;
  bool isDesktop = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height:
              MediaQuery.of(context).size.width > 1200
                  ? 140
                  : MediaQuery.of(context).size.width > 600
                  ? 100
                  : MediaQuery.of(context).size.width > 400
                  ? 100
                  : 60,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 40,
          ),
          child: Row(
            spacing: MediaQuery.of(context).size.width / 90,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isMobile = true;
                      isWib = false;
                      isDesktop = false;
                    });
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height:
                        MediaQuery.of(context).size.width / 20 < 40
                            ? 40
                            : MediaQuery.of(context).size.width / 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: isMobile ? AppColors.blue : AppColors.middleGrey,
                    ),
                    child: Row(
                      children: [
                        Visibility(
                          visible: MediaQuery.of(context).size.width > 600,
                          child: Image.asset(Assets.imagesMobile),
                        ),
                        SizedBox(width: 22),
                        Text(
                          "Mobile Applications",
                          style:
                              MediaQuery.of(context).size.width < 650
                                  ? AppTextStyles.style14w500(context).copyWith(
                                    color:
                                        isMobile
                                            ? AppColors.white
                                            : AppColors.black,
                                  )
                                  : AppTextStyles.style20w700(context).copyWith(
                                    color:
                                        isMobile
                                            ? AppColors.white
                                            : AppColors.black,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isMobile = false;
                      isWib = false;
                      isDesktop = true;
                    });
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height:
                        MediaQuery.of(context).size.width / 20 < 40
                            ? 40
                            : MediaQuery.of(context).size.width / 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: isDesktop ? AppColors.blue : AppColors.middleGrey,
                    ),
                    child: Row(
                      children: [
                        Visibility(
                          visible: MediaQuery.of(context).size.width > 600,
                          child: Image(image: AssetImage(Assets.imagesDesktop)),
                        ),
                        SizedBox(width: 22),
                        Text(
                          "Desktop Applications",
                          style:
                              MediaQuery.of(context).size.width < 650
                                  ? AppTextStyles.style14w500(context).copyWith(
                                    color:
                                    isDesktop
                                            ? AppColors.white
                                            : AppColors.black,
                                  )
                                  : AppTextStyles.style20w700(context).copyWith(
                                    color:
                                        isDesktop
                                            ? AppColors.white
                                            : AppColors.black,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isMobile = false;
                      isWib = true;
                      isDesktop = false;
                    });
                  },
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    height:
                        MediaQuery.of(context).size.width / 20 < 40
                            ? 40
                            : MediaQuery.of(context).size.width / 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: isWib ? AppColors.blue : AppColors.middleGrey,
                    ),
                    child: Row(
                      children: [
                        Visibility(
                          visible: MediaQuery.of(context).size.width > 600,
                          child: Image(image: AssetImage(Assets.imagesWeb)),
                        ),
                        SizedBox(width: 22),
                        Text(
                          "Web Sites",
                          style:
                              MediaQuery.of(context).size.width < 650
                                  ? AppTextStyles.style14w500(context).copyWith(
                                    color:
                                    isWib
                                            ? AppColors.white
                                            : AppColors.black,
                                  )
                                  : AppTextStyles.style20w700(context).copyWith(
                                    color:
                                        isWib
                                            ? AppColors.white
                                            : AppColors.black,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 32,
              mainAxisSpacing: 32,
              childAspectRatio: 1.16,
            ),
            padding: const EdgeInsets.all(42),
            itemCount: 13,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteGrey,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Color(0xffE9FE00),
                            child: Icon(Icons.north_east),
                          ),
                          SizedBox(width: 22),
                          Text(
                            "Trend El Agaar Application",
                            style: AppTextStyles.style32w500(context),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      isMobile ? Assets.imagesMobilTest : Assets.imagesWebTest,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
