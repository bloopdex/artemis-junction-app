import 'package:app/constants/const.dart';
import 'package:app/features/home/widgets/filter_chip.dart';
import 'package:app/features/home/widgets/statistics_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const filter = [
      'Server Rooms',
      'Subfloors',
      'MCC',
      'UPS',
      'Diesel Engines'
    ];

    const statisticData = [
      {
        'title': 'Temperature [C]:',
        'value': '15 °C',
        'icon': 'temperature.svg'
      },
      {'title': 'Humidity [%]:', 'value': '45 %', 'icon': 'humidity.svg'},
      {'title': 'TVOC [ppb]:', 'value': '859', 'icon': 'tvoc.svg'},
      {'title': 'eCO2 [ppm]:', 'value': '550', 'icon': 'co2.svg'},
      {'title': 'Raw H2:', 'value': '50%', 'icon': 'h2.svg'},
      {'title': 'Raw Ethanol:', 'value': '10%', 'icon': 'ethanol.svg'},
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.sp),
            child: Text(
              'The Facility Architecture',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 8.sp),
          SingleChoiceChipWidget(
              options: filter,
              initialValue: 'Server Rooms',
              onSelectionChanged: (String selectedValue) {}),
          SizedBox(height: 16.sp),
          Image.asset(
            '${images}machine.png',
            fit: BoxFit.cover,
            height: 232.sp,
            width: double.infinity,
          ),
          SizedBox(height: 16.sp),
          const StatisticWidget(data: statisticData),
          SizedBox(
            height: 27.sp,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.sp),
            child: TextButton(
                onPressed: () {},
                style: Theme.of(context).textButtonTheme.style,
                child: const Text('Activate Clean Agent')),
          ),
        ],
      ),
    );
  }
}
