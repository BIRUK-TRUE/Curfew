import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const background = Color(0xFF0F172A);
  static const card = Color(0xFF1E293B);
  static const accent = Color(0xFF38BDF8);
  static const permanentBlock = Color(0xFFEF4444);
  static const textPrimary = Color(0xFFF8FAFC);
  static const textMuted = Color(0xFF94A3B8);
}

class AppTextStyles {
  static TextStyle get title => GoogleFonts.inter(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle get body =>
      GoogleFonts.inter(fontSize: 16, color: AppColors.textPrimary);
}
