import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:my_app_name/config/Routing/app_routing.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
           routerConfig:router,
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
  }
}

