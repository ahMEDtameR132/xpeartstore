import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static var googlefontapp2;

  static TextStyle googleFontApp({required Color color}) {
    return GoogleFonts.openSans(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle googleFontApp2({required Color color}) {
    return GoogleFonts.playfairDisplay(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle googleFontApp3({required Color color}) {
    return GoogleFonts.ptSans(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }
}
