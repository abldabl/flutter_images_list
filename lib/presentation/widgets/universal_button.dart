import 'package:flutter/material.dart';
import 'package:flutter_image_list/presentation/themes/app_theme_scope.dart';

class UniversalButton extends StatelessWidget {
  final VoidCallback? onBtnPressed;
  final String text;
  final Color? primaryColor;
  final Color? textColor;
  final Size? fixedSize;
  final EdgeInsets padding;
  final double elevation;

  const UniversalButton({
    Key? key,
    required this.onBtnPressed,
    required this.text,
    this.primaryColor,
    this.textColor,
    this.fixedSize,
    this.padding = const EdgeInsets.symmetric(vertical: 16),
    this.elevation = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: fixedSize,
        backgroundColor: primaryColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      onPressed: onBtnPressed,
      child: Padding(
        padding: padding,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: AppTheme.of(context)!
              .textStyles
              .bold(size: 15.0, height: 18.15)
              .copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
