import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_app_name/app/animated_Splash_Screen.dart';
import 'package:my_app_name/features/profile/pages/a.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const AnimatedSplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: RoutPageName.a,
          builder: (BuildContext context, GoRouterState state) {
            return const A();
          },
        ),
        GoRoute(
          path: 'Profile',
          builder: (BuildContext context, GoRouterState state) {
            return const A();
          },
        ),

      ],
    ),
  ],
);


class RoutPageName{
  static String a = '/';
  
}