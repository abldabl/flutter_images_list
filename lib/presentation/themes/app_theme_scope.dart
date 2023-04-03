import 'package:flutter/material.dart';
import 'package:flutter_image_list/presentation/themes/base/base_theme.dart';
import 'package:flutter_image_list/presentation/themes/base/base_theme_colors.dart';
import 'package:flutter_image_list/presentation/themes/base/base_theme_font_families.dart';
import 'package:flutter_image_list/presentation/themes/base/base_theme_icons.dart';
import 'package:flutter_image_list/presentation/themes/base/base_theme_text_styles.dart';
import 'package:flutter_image_list/presentation/themes/light/light_theme.dart';
import 'package:flutter_image_list/presentation/themes/light/light_theme_colors.dart';
import 'package:flutter_image_list/presentation/themes/light/light_theme_font_families.dart';
import 'package:flutter_image_list/presentation/themes/light/light_theme_icons.dart';
import 'package:flutter_image_list/presentation/themes/light/light_theme_text_styles.dart';

class AppTheme extends InheritedWidget {
  final BaseTheme theme;

  const AppTheme({Key? key, required Widget child, required this.theme})
      : super(key: key, child: child);

  BaseThemeColors get colors => theme.colors;

  BaseThemeIcons get icons => theme.icons;

  BaseThemeTextStyles get textStyles => theme.textStyles;

  BaseThemeFontFamilies get fontFamilies => theme.fontFamilies;

  static BaseTheme get light => LightTheme(
        LightThemeColors(),
        LightThemeIcons(),
        LightThemeTextStyles(),
        LightThemeFontFamilies(),
      );

  static AppTheme? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<AppTheme>();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
