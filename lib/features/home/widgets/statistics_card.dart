import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/const.dart';

class StatisticWidget extends StatelessWidget {
  final List<Map<String, String>> data;
  const StatisticWidget({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 146 / 69,
          controller: ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          mainAxisSpacing: 10.sp,
          crossAxisSpacing: 10.sp,
          children: data
              .map((e) => _buildCard(
                  title: e['title'] ?? '',
                  value: e['value'] ?? '',
                  icon: e['icon'] ?? '',
                  context: context))
              .toList(),
        ),
      ),
    );
    // return _buildCard(context);
  }
}

Container _buildCard(
    {required String title,
    required String value,
    required BuildContext context,
    required String icon}) {
  return Container(
      height: 69.sp,
      width: 146.sp,
      padding: EdgeInsets.all(10.sp),
      decoration: kStaticsContainerDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: kGreyStaticWidget),
              ),
              Text(
                value,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 30.sp, color: kBlue),
              ),
            ],
          ),
          SvgPicture.asset(
            icons + icon,
            width: 15.sp,
            theme: const SvgTheme(currentColor: kLightIconColor),
          ),
        ],
      ));
}
