import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/constants/app_colors.dart';

class AppTextStyles {
  static TextStyle displayXSBold = GoogleFonts.inter(
      color: AppColors.grey900, fontSize: 24, fontWeight: FontWeight.w700);
  static TextStyle lgRegular = GoogleFonts.inter(
      color: AppColors.grey700, fontSize: 18, fontWeight: FontWeight.w400);
  static TextStyle semiBold = GoogleFonts.inter(
      color: AppColors.grey600, fontSize: 14, fontWeight: FontWeight.bold);
}
