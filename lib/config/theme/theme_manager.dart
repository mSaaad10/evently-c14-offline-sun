import 'package:evently/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
      cardColor: ColorsManager.light,
      cardTheme: CardTheme(
        color: ColorsManager.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      primaryColor: ColorsManager.blue,
      useMaterial3: false,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: ColorsManager.blue),
          backgroundColor: ColorsManager.light,
          centerTitle: true,
          titleTextStyle: GoogleFonts.roboto(
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: ColorsManager.blue)),
      scaffoldBackgroundColor: ColorsManager.light,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          iconSize: 24,
          shape: StadiumBorder(
              side: BorderSide(color: ColorsManager.white, width: 4)),
          backgroundColor: ColorsManager.blue,
          foregroundColor: ColorsManager.white),
      bottomAppBarTheme: const BottomAppBarTheme(
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
      iconTheme: const IconThemeData(color: ColorsManager.black),
      tabBarTheme: const TabBarTheme(
        indicatorColor: Colors.transparent,
        tabAlignment: TabAlignment.start,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: GoogleFonts.inter(
                fontSize: 18.sp,
                color: ColorsManager.white,
                fontWeight: FontWeight.w500),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r)),
            backgroundColor: ColorsManager.blue,
            padding: REdgeInsets.symmetric(vertical: 16)),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              foregroundColor: ColorsManager.blue,
              textStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.blue,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline))),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: ColorsManager.grey),
        prefixIconColor: ColorsManager.grey,
        suffixIconColor: ColorsManager.grey,
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
          titleSmall: GoogleFonts.inter(
              fontSize: 14.sp,
              color: ColorsManager.white,
              fontWeight: FontWeight.normal),
          bodyMedium: GoogleFonts.inter(
            fontSize: 14,
            color: ColorsManager.black,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: GoogleFonts.inter(
              fontSize: 20.sp,
              color: ColorsManager.blue,
              fontWeight: FontWeight.w500),
          bodySmall: GoogleFonts.inter(
              fontSize: 16,
              color: ColorsManager.blue,
              fontWeight: FontWeight.w500),
          displaySmall: GoogleFonts.inter(
              fontSize: 14,
              color: ColorsManager.black,
              fontWeight: FontWeight.w500)));
  static final ThemeData dark = ThemeData();
}
