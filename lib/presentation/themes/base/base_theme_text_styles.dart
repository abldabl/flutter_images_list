import 'package:flutter/cupertino.dart';

abstract class BaseThemeTextStyles {
  TextStyle regular({required double? size, required double? height});

  TextStyle medium({required double? size, required double? height});

  TextStyle semiBold({required double? size, required double? height});

  TextStyle bold({required double? size, required double? height});

  TextStyle extraBold({required double? size, required double? height});
}
