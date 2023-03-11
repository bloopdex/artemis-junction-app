import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/const.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Container(
        width: 40.sp,
        height: 40.sp,
        alignment: Alignment.center,
        margin: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.sp),
          color: kGrey,
        ),
        child: SvgPicture.asset(
          '${icons}list.svg',
          theme: const SvgTheme(currentColor: kLightBlue),
          height: 12.sp,
          width: 18.sp,
        ),
      ),
      title: SvgPicture.asset('${images}Logo+Name.svg', height: 50.sp),
      actions: [
        Container(
          width: 40.sp,
          height: 40.sp,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            color: kGrey,
          ),
          child: SvgPicture.asset(
            '${icons}notification.svg',
            theme: const SvgTheme(currentColor: kLightBlue),
            height: 18.sp,
            width: 18.sp,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75.sp);
}
