import 'package:flutter/material.dart';
import 'package:world_tech_website/core/utils/app_text_style.dart';

import '../../constant.dart';
import '../../core/utils/app_colors.dart';
import '../../core/widgets/custom_logo.dart';
import '../home/home_view.dart';

// تعريف الثوابت لعناصر القائمة
const String home = "الصفحة الرئيسية";
const String services = "خدماتنا";
const String portfolio = "أعمالنا";
const String team = "فريق العمل";

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  String activeItem = home;

  final List<String> navItems = [home, services, portfolio, team];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: direction,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1E1E1E), Color(0xFF2C2C2C)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: IndexedStack(
                index: navItems.indexOf(activeItem),
                children: const [
                  HomeView(),
                  Center(
                    child: Text(
                      "صفحة الخدمات",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      "صفحة الأعمال",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Center(
                    child: Text(
                      "صفحة الفريق",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 40,
              ),
              child: AspectRatio(
                aspectRatio: 22 / 1,
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 5,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.black,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          navItems.map((item) {
                            final bool isActive = item == activeItem;
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  activeItem = item;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 16,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Spacer(),
                                    SizedBox(height: 4),
                                    Text(
                                      item,
                                      style: AppTextStyles.upBar(
                                        context,
                                      ).copyWith(color: AppColors.white),
                                    ),
                                    Spacer(),
                                    AnimatedContainer(
                                      duration: const Duration(milliseconds: 300),
                                      height: 4,
                                      width:
                                          isActive
                                              ? MediaQuery.of(
                                                    context,
                                                  ).size.width /
                                                  30
                                              : 0,
                                      decoration: BoxDecoration(
                                        color: AppColors.yellow,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
