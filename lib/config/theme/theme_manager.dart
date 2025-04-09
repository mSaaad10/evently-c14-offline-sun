import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
          backgroundColor: ColorsManager.light,
          centerTitle: true,
          titleTextStyle: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: ColorsManager.black)),
      scaffoldBackgroundColor: ColorsManager.light,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          iconSize: 24,
          shape: StadiumBorder(
              side: BorderSide(color: ColorsManager.white, width: 4)),
          backgroundColor: ColorsManager.blue,
          foregroundColor: ColorsManager.white),
      bottomAppBarTheme: BottomAppBarTheme(
        shape: CircularNotchedRectangle(),
        color: ColorsManager.blue,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: ColorsManager.white,
        unselectedItemColor: ColorsManager.white,
      ),
      iconTheme: const IconThemeData(color: ColorsManager.grey),
      textButtonTheme: TextButtonThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r)),
            backgroundColor: ColorsManager.blue,
            padding: REdgeInsets.symmetric(vertical: 16)),
      ),
      inputDecorationTheme: InputDecorationTheme(
        iconColor: ColorsManager.grey,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(color: ColorsManager.grey, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(color: ColorsManager.grey, width: 1)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(color: ColorsManager.red, width: 1)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(color: ColorsManager.red, width: 1)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(color: ColorsManager.grey, width: 1)),
        labelStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          color: ColorsManager.grey,
          fontWeight: FontWeight.w500,
        ),
      ),
      textTheme: TextTheme(
        labelSmall: GoogleFonts.inter(
          fontSize: 16.sp,
          color: ColorsManager.grey,
          fontWeight: FontWeight.w500,
        ),
        titleSmall: GoogleFonts.inter(
            fontSize: 16.sp,
            color: ColorsManager.blue,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: ColorsManager.blue),
        labelMedium: GoogleFonts.inter(
          fontSize: 20.sp,
          color: ColorsManager.blue,
          fontWeight: FontWeight.w500,
        ),
        titleMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: ColorsManager.white,
            fontWeight: FontWeight.w600),
      ));
  static final ThemeData dark = ThemeData();
}
