import 'package:flutter_image_list/presentation/themes/base/base_theme_colors.dart';
import 'package:flutter_image_list/presentation/themes/base/base_theme_font_families.dart';
import 'package:flutter_image_list/presentation/themes/base/base_theme_icons.dart';
import 'package:flutter_image_list/presentation/themes/base/base_theme_text_styles.dart';

abstract class BaseTheme {
  BaseThemeColors colors;
  BaseThemeIcons icons;
  BaseThemeTextStyles textStyles;
  BaseThemeFontFamilies fontFamilies;

  BaseTheme(
    this.colors,
    this.icons,
    this.textStyles,
    this.fontFamilies,
  );
}
