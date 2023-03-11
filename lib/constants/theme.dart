import 'package:app/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      displayMedium: const TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      displaySmall: const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: const TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headlineSmall: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.15,
      ),
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.15,
      ),
      titleSmall: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.1,
      ),
      bodyLarge: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      labelLarge: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.25,
      ),
      bodySmall: TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      labelSmall: TextStyle(
        fontSize: 8.sp,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: kLightBlue,
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 17.sp),
        minimumSize: Size(double.infinity, 56.sp),
        textStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.sp),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.black),
  );
}
