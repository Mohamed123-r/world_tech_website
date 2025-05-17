import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';
import 'features/main/main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Tajawal',
        primaryColor: AppColors.black,
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
          surfaceTintColor: AppColors.white,
          elevation: 0,
        ),
      ),
      home: MainView(),
    );
  }
}
