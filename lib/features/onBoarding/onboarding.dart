import 'package:app/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../home/home_screen.dart';

class OnBoarding extends StatelessWidget {
  static const String routeName = '/onBoarding';
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: ScreenUtil().setHeight(800),
            padding: EdgeInsets.symmetric(horizontal: 24.sp),
            child: Column(
              children: [
                const Spacer(
                  flex: 4,
                ),
                SvgPicture.asset('${images}logo.svg', height: 87.sp),
                SizedBox(height: 18.sp),
                Text('BK FIREGUARD',
                    style: Theme.of(context).textTheme.titleLarge),
                SizedBox(
                  height: 20.sp,
                ),
                Text('Keeping Digital Data Safe from Fire Hazards',
                    style: Theme.of(context).textTheme.bodyMedium),
                const Spacer(flex: 3),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                    style: Theme.of(context).textButtonTheme.style,
                    child: const Text('Start Now')),
                const Spacer(flex: 1)
              ],
            )));
  }
}
