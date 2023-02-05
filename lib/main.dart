import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/app_colors.dart';
import 'package:ui_challenge/screens/on_boarding_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Challenge',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary600,
          onPrimary: AppColors.primary600,
          secondary: AppColors.secondary600,
          onSecondary: AppColors.secondary600,
          error: AppColors.error,
          onError: AppColors.error,
          background: AppColors.background,
          onBackground: AppColors.background,
          surface: AppColors.background,
          onSurface: AppColors.background,
        ),
      ),
      home: const OnBoardingScreen(),
    );
  }
}
