import 'package:app/constants/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AlertScreen extends StatelessWidget {
  static const String routeName = '/alert';
  const AlertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kRed,
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
                  Text('Fire Alert',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white, fontSize: 28.sp)),
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
                              color: kRed,
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
                              color: kRed,
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
                              color: kRed,
                              spreadRadius: -5.0,
                              blurRadius: 20.0,
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        '${icons}fire.svg',
                        height: 62.67.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 14.sp,
                  ),
                  Text('Location',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.white, fontSize: 24.sp)),
                  Text('Server Room',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: Colors.white, fontSize: 28.sp)),
                  SizedBox(
                    height: 24.sp,
                  ),
                  Text(
                    'The fire suppression system has been activated and is working to control the fire.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
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
                        'Activate Clean Agent',
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
