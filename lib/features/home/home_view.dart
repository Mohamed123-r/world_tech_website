import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:world_tech_website/core/utils/app_colors.dart';
import 'package:world_tech_website/core/utils/app_text_style.dart';
import 'package:world_tech_website/features/home/widgets/hero_section.dart';
import '../../core/widgets/custom_logo.dart';
import '../../generated/assets.dart';

class HomeView extends StatefulWidget {
  final int scrollToSectionIndex;
  final ValueChanged<int>? onSectionChanged;

  const HomeView({
    super.key,
    this.scrollToSectionIndex = 0,
    this.onSectionChanged,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController _scrollController = ScrollController();

  final List<GlobalKey> sectionKeys = List.generate(6, (_) => GlobalKey());

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSection(widget.scrollToSectionIndex);

    });


  }
  void _onScroll() {

    for (int i = 0; i < sectionKeys.length; i++) {
      final context = sectionKeys[i].currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero, ancestor: null).dy;

        if (position <= 100) {
          widget.onSectionChanged?.call(i);
        }
      }
    }
  }

  @override
  void didUpdateWidget(HomeView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scrollToSectionIndex != widget.scrollToSectionIndex) {
      _scrollToSection(widget.scrollToSectionIndex);
    }
  }

  void _scrollToSection(int index) {
    if (index < 0 || index >= sectionKeys.length) {
      return;
    }

    final context = sectionKeys[index].currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();


    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Container(
          key: sectionKeys[0],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 260.0),
                    child: Image.asset(
                      Assets.imagesBackgroundImageTest,
                      width: MediaQuery.of(context).size.width,
                      height: 1200,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    children: [
                      HeroSection(),

                      Container(
                        key: sectionKeys[1],
                        margin: EdgeInsetsDirectional.symmetric(horizontal: 32),
                        padding: EdgeInsetsDirectional.symmetric(
                          horizontal: 55,
                          vertical: 40,
                        ),
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
                                Image.asset(
                                  Assets.imagesUpBannerTest,
                                  width: 332,
                                  height: 332,
                                ),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "مواقع الويب بوابتك إلى العالم الرقمي",
                                          style: AppTextStyles.style20w500(
                                            context,
                                          ),
                                        ),
                                        SizedBox(height: 48),
                                        Text(
                                          "في World Tech، نصنع مواقع ويب احترافية وجذابة تُعبر عن هوية علامتك التجارية باحترافية. سواء كنت بحاجة إلى موقع شخصي، متجر إلكتروني، أو منصة متكاملة، نضمن لك تصميمًا سلسًا، تجربة مستخدم متميزة، وأداءً عالي السرعة. نواكب أحدث التقنيات لنمنحك موقعًا يتفوق على المنافسين ويحقق أهدافك بفعالية.",
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppTextStyles.style20w500(
                                            context,
                                          ),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: [
                                        Text(
                                          "تطبيقات الهاتف: ابتكار في جيب عملائك",
                                          style: AppTextStyles.style20w500(
                                            context,
                                          ),
                                        ),
                                        SizedBox(height: 48),
                                        Text(
                                          "نطور تطبيقات هاتف ذكية ومبتكرة تلبي احتياجات المستخدمين على نظامي Android و iOS.من التطبيقات التجارية والتعليمية إلى التطبيقات الترفيهية والخدمية، نضمن واجهات سهلة الاستخدام، أداءً سريعًا، وأعلى معايير الأمان. فريقنا يحول أفكارك إلى تطبيقات تفاعلية تزيد من ولاء العملاء وتنمو مع أعمالك.",

                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppTextStyles.style20w500(
                                            context,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 24),
                                Image.asset(
                                  Assets.imagesUpBanner1,
                                  width: 332,
                                  height: 332,
                                ),
                              ],
                            ),
                            SizedBox(height: 24),
                            Row(
                              children: [
                                Image.asset(
                                  Assets.imagesUpBanner2,
                                  width: 332,
                                  height: 332,
                                ),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,

                                      children: [
                                        Text(
                                          "تطبيقات الحاسوب: قوة الأداء والاحترافية",
                                          style: AppTextStyles.style20w500(
                                            context,
                                          ),
                                        ),
                                        SizedBox(height: 48),
                                        Text(
                                          "نقدم حلول برمجية متكاملة لأنظمة الحاسوب (Windows, macOS, Linux) مصممة خصيصًا لتناسب متطلبات عملك، سواء كانت تطبيقات إدارية، برامج محاسبة، أو أدوات إنتاجية متقدمة. نركز على الأداء العالي، واجهات سهلة التخصيص، والتكامل مع الأنظمة الأخرى لضمان كفاءة تشغيلية تواكب تطور شركتك. ",
                                          maxLines: 7,
                                          overflow: TextOverflow.ellipsis,
                                          style: AppTextStyles.style20w500(
                                            context,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                key: sectionKeys[2],

                child: Stack(
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
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 380,
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(
                    dragDevices: {
                      PointerDeviceKind.touch,
                      PointerDeviceKind.mouse,
                    },
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,

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
                                          style: AppTextStyles.style20w500(
                                            context,
                                          ),
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
              SizedBox(height: 56),
              Container(
                key: sectionKeys[3],
                child: Text(
                  "تعرف علي فريق العمل لدينا",
                  style: AppTextStyles.style32w500(context),
                ),
              ),
              SizedBox(height: 56),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 64.0),
                child: Row(
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
                    Spacer(),
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
                              style: AppTextStyles.style32w500(
                                context,
                              ).copyWith(
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
              SizedBox(height: 32),
              Container(
                key: sectionKeys[4],
                height: 400,
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                width: double.infinity,
                decoration: BoxDecoration(color: AppColors.whiteGrey),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "تواصل معنا",
                      style: AppTextStyles.style22w500(context),
                    ),
                    Row(
                      children: [
                        SizedBox(width: 32),
                        Image.asset(
                          Assets.imagesFacebook,
                          width: 28,
                          height: 28,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            height: 28,
                            width: 2,
                            color: AppColors.grey,
                          ),
                        ),
                        Image.asset(
                          Assets.imagesInstgram,
                          width: 28,
                          height: 28,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            height: 28,
                            width: 2,
                            color: AppColors.grey,
                          ),
                        ),

                        Image.asset(
                          Assets.imagesWhatsapp,
                          width: 28,
                          height: 28,
                        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  const FooterItem({super.key, required this.image, required this.text});

  final String image;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(image),
        SizedBox(width: 24),
        SizedBox(
          width: (MediaQuery.of(context).size.width - 100) / 6,
          child: Text(text, style: AppTextStyles.style16w500(context)),
        ),
      ],
    );
  }
}

class BulletText extends StatelessWidget {
  final String text;

  const BulletText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text, style: AppTextStyles.style20w500(context)),
          SizedBox(width: 8),
          Text('• ', style: AppTextStyles.style20w500(context)),
        ],
      ),
    );
  }
}

class TeamItem extends StatelessWidget {
  const TeamItem({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.imagePath,
    required this.color,
  });

  final String firstName;
  final String lastName;
  final String imagePath;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            width: 220,
            height: 414,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(600),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(600),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    firstName,
                    style: AppTextStyles.style26w500(
                      context,
                    ).copyWith(color: AppColors.white),
                  ),
                  Text(
                    lastName,
                    style: AppTextStyles.style22w500(
                      context,
                    ).copyWith(color: AppColors.white),
                  ),
                  const SizedBox(height: 42),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(600),
                        child: Image.asset(
                          imagePath,
                          width: 220,
                          height: 266,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: -370,
                        child: Container(
                          width: 220,
                          height: 414,
                          decoration: BoxDecoration(
                            color: Color(0xffE9FE00),
                            borderRadius: BorderRadius.circular(600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
