import 'package:app/constants/theme.dart';
import 'package:app/features/alert/alert.dart';
import 'package:app/features/home/home_screen.dart';
import 'package:app/features/onBoarding/onboarding.dart';
import 'package:app/features/warning/warning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            routes: {
              HomeScreen.routeName: (context) => const HomeScreen(),
              WarningScreen.routeName: (context) => const WarningScreen(),
              AlertScreen.routeName: (context) => const AlertScreen(),
              OnBoarding.routeName: (context) => const OnBoarding()
            },
            home: const OnBoarding(),
          );
        });
  }
}
