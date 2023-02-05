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
              backgroundImageWidget: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Image.asset(AssetsPaths.eclipse1,
                      width: MediaQuery.of(context).size.width * .75)),
              pageNumber: 0,
              controller: controller),
          OnBoardingPage(
            centerImagePath: AssetsPaths.creditCard,
            backgroundImageWidget: Align(
                alignment: AlignmentDirectional.topEnd,
                child: Image.asset(AssetsPaths.eclipse2,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width)),
            pageNumber: 1,
            controller: controller,
          ),
          OnBoardingPage(
            centerImagePath: AssetsPaths.notificationHeart,
            backgroundImageWidget: Align(
                alignment: AlignmentDirectional.topEnd,
                child: Image.asset(AssetsPaths.eclipse3,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width)),
            pageNumber: 2,
            controller: controller,
          ),
          OnBoardingPage(
            centerImagePath: AssetsPaths.rocket,
            backgroundImageWidget: Align(
                alignment: AlignmentDirectional.topEnd,
                child: Image.asset(AssetsPaths.eclipse4,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width)),
            pageNumber: 3,
            controller: controller,
          ),
        ],
      ),
    );
  }
}
