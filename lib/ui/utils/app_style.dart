import 'dart:ui';

import 'package:evently/ui/utils/app_colors.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

 class AppStyles {
  /// Primary
  static TextStyle bold14primary = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );
  static TextStyle bold16primary = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );
  static TextStyle bold16primary2 = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.primary,
  );
  static TextStyle bold20primary = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
  );

  /// White
  static TextStyle bold12White = GoogleFonts.inter(
    fontSize: 12,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold14White = GoogleFonts.inter(
    fontSize: 14,
    color: AppColors.white,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bold16White = GoogleFonts.inter(
    fontSize: 16,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bold20White = GoogleFonts.inter(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeight.w500,
  );
  static TextStyle bold24White = GoogleFonts.inter(
    fontSize: 24,
    color: AppColors.white,
    fontWeight: FontWeight.w700,
  );

  /// Black
  static TextStyle bold14Blake = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );
  static TextStyle bold16BlakeW400 = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  static TextStyle bold16Blake = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static TextStyle bold20Blake = GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  /// Black2
  static TextStyle bold16Blake2 = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.black2,
  );
  static TextStyle bold14Blake2 = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.black2,
  );
}
