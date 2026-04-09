import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GalaxyTheme {
  static const Color midnightBlue = Color(0xFF0F172A);
  static const Color purple = Color(0xFF8B5CF6);
  static const Color pink = Color(0xFFEC4899);
  static const Color textLight = Color(0xFFF8FAFC);
  static const Color cardColor = Color(0xFF1E293B);

  static ThemeData get theme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: purple,
      scaffoldBackgroundColor: Colors.transparent, // Background will be handled by GalaxyBackground
      colorScheme: const ColorScheme.dark(
        primary: purple,
        secondary: pink,
        surface: cardColor,
        error: Colors.redAccent,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme).copyWith(
        titleLarge: GoogleFonts.poppins(
          color: textLight,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: GoogleFonts.poppins(color: textLight),
        bodyMedium: GoogleFonts.poppins(color: textLight.withOpacity(0.8)),
      ),
      cardTheme: CardThemeData(
        color: cardColor.withOpacity(0.6),
        elevation: 8,
        shadowColor: purple.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: pink,
        foregroundColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: midnightBlue.withOpacity(0.7),
        hintStyle: GoogleFonts.poppins(color: Colors.white54),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: purple.withOpacity(0.5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: purple.withOpacity(0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: pink),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      )
    );
  }
}
