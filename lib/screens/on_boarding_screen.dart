import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/assets_paths.dart';
import 'package:ui_challenge/widgets/onboarding_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (i) => setState(() => currentPage = i),
        children: [
          OnBoardingPage(
              centerImagePath: AssetsPaths.dollar,
              backgroundImagePath: AssetsPaths.eclipse1,
              pageNumber: 0,
              controller: controller),
          OnBoardingPage(
            centerImagePath: AssetsPaths.creditCard,
            backgroundImagePath: AssetsPaths.eclipse2,
            pageNumber: 1,
            controller: controller,
          ),
          OnBoardingPage(
            centerImagePath: AssetsPaths.notificationHeart,
            backgroundImagePath: AssetsPaths.eclipse3,
            pageNumber: 2,
            controller: controller,
          ),
          OnBoardingPage(
            centerImagePath: AssetsPaths.rocket,
            backgroundImagePath: AssetsPaths.eclipse4,
            pageNumber: 3,
            controller: controller,
          ),
        ],
      ),
    );
  }
}
