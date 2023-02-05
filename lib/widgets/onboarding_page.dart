import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:ui_challenge/constants/app_colors.dart';
import 'package:ui_challenge/constants/assets_paths.dart';
import 'package:ui_challenge/constants/fonts.dart';
import 'package:ui_challenge/widgets/frosted_glass_wrapper.dart';
import 'package:ui_challenge/widgets/on_boarding_page_indicator.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {Key? key,
      required this.pageNumber,
      required this.centerImagePath,
      required this.backgroundImageWidget,
      required this.controller})
      : super(key: key);
  final String centerImagePath;
  final Widget backgroundImageWidget;
  final PageController controller;
  final int pageNumber;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .07),
          child: Image.asset(
            AssetsPaths.logoHorizontal,
            width: MediaQuery.of(context).size.width * .842,
          ),
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              backgroundImageWidget,
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  centerImagePath,
                  width: MediaQuery.of(context).size.width * .5,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * .08,
                child: FrostedGlassBox(
                  width: MediaQuery.of(context).size.width * .83,
                  height: MediaQuery.of(context).size.height * .4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFDEB).withOpacity(.5),
                      border: const GradientBoxBorder(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                            Colors.white,
                            Color(0xfffff5c3),
                            Colors.white
                          ])),
                      gradient: const LinearGradient(colors: [
                        Colors.white,
                        Color(0x0ffff5c3),
                        Colors.white
                      ]),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .05),
                        Text(
                          'Purchase your card \n with just 1 click!',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.displayXSBold,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .04),
                        Text(
                          'Welcome to NEW VISION\nyou can purchase anything you\nwant with just 1 click',
                          textAlign: TextAlign.center,
                          style: AppTextStyles.lgRegular,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Row(
                            children: [
                              Text(
                                'SKIP',
                                style: AppTextStyles.semiBold,
                              ),
                              const Spacer(),
                              OnBoardingPageIndicator(
                                currentPage: pageNumber + 1,
                                angle: 30 * (pageNumber + 1).toDouble(),
                                child: InkWell(
                                  onTap: () {
                                    controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.easeIn);
                                  },
                                  child: Container(
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                        color: AppColors.primary600,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .03),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
