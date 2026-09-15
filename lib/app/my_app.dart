import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart'; // 1. Import the package
import 'package:my_app_name/config/Routing/app_routing.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 2. Initialize ScreenUtilPlusInit
    return ScreenUtilPlusInit(
      designSize: const Size(360, 690), // Replace with your Figma/UI design dimensions
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Sizer(
          builder: (context, orientation, deviceType) {
            return MaterialApp.router(
              routerConfig: router,
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              debugShowCheckedModeBanner: false,
              // theme: ThemeData(
              //   primaryColor: AppColor.primary,
              //   fontFamily: 'Roboto',
              // ),
            );
          },
        );
      },
    );
  }
}