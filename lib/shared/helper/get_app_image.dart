import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/// Centralized SVG Image helper
class AppSvgImage {
  static Widget get({
    required String asset,
    double? size,
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
  }) {
    return SvgPicture.asset(
      asset,
      width: size ?? width,
      height: size ?? height,
      fit: fit,
      colorFilter: color != null 
          ? ColorFilter.mode(color, BlendMode.srcIn) 
          : null,
    );
  }
}

/// UpperCamelCase naming convention for classes
class CustomIconsImages {
  static const String google = 'assets/images/Logo.svg';
  static const String apple = 'assets/images/Logo (1).svg';
}