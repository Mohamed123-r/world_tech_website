import 'package:flutter/material.dart';
import '../../../generated/assets.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.imagesHeroSectionBannerTest,
      width: MediaQuery.of(context).size.width,
    );
  }
}
