import 'package:flutter_image_list/presentation/themes/base/base_theme_text_styles.dart';
import 'package:flutter/cupertino.dart';

class LightThemeTextStyles extends BaseThemeTextStyles {
  @override
  TextStyle regular({required double? size, required double? height}) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400,
        height: height! / size!,
      );

  @override
  TextStyle bold({required double? size, required double? height}) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w700,
        height: height! / size!,
      );

  @override
  TextStyle medium({required double? size, required double? height}) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w500,
        height: height! / size!,
      );

  @override
  TextStyle semiBold({required double? size, required double? height}) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w600,
        height: height! / size!,
      );

  @override
  TextStyle extraBold({required double? size, required double? height}) => TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w800,
        height: height! / size!,
      );
}
