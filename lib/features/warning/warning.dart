import 'package:app/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class WarningScreen extends StatelessWidget {
  static const String routeName = '/warning';
  const WarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlue,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.sp),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  Text('Warning',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white, fontSize: 36.sp)),
                  SizedBox(
                    height: 34.sp,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 260.sp,
                        width: 260.sp,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                            ),
                            const BoxShadow(
                              color: kBlue,
                              spreadRadius: -5.0,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 206.sp,
                        width: 206.sp,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                            ),
                            const BoxShadow(
                              color: kBlue,
                              spreadRadius: -5.0,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 154.sp,
                        width: 154.sp,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.1),
                            ),
                            const BoxShadow(
                              color: kBlue,
                              spreadRadius: -5.0,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        '${icons}warning.svg',
                        height: 56.69.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.sp,
                  ),
                  Text(
                    'A possible fire has been detected in your data center',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Colors.white),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: Theme.of(context).textButtonTheme.style!.copyWith(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: Text(
                        'Activate Suppression System',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: kBlue),
                      )),
                  SizedBox(
                    height: 16.sp,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: Theme.of(context).textButtonTheme.style!.copyWith(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: Text(
                        'Call Emergency',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: kRed),
                      )),
                  const Spacer(
                    flex: 2,
                  )
                ],
              ),
            ),
            Positioned(
                top: 26.sp,
                right: 0.sp,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 36.sp,
                      color: Colors.white,
                    )))
          ],
        ),
      )),
    );
  }
}
