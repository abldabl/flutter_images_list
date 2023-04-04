import 'package:flutter/material.dart';
import 'package:flutter_image_list/data/exceptions/exception.dart';
import 'package:flutter_image_list/presentation/themes/app_theme_scope.dart';

import 'popup_widgets/error_popup.dart';

class PopupHelper {
  Future<void> errorPopUp(
    BuildContext context,
    BaseException error, {
    VoidCallback? onDismiss,
    String? btnText,
  }) async {
    await showDialog(
      barrierColor: AppTheme.of(context)!.colors.black().withOpacity(0.85),
      context: context,
      builder: (_) => ErorrPopup(
        error: error,
        onDismiss: onDismiss,
        btnText: btnText,
      ),
    );
  }
}
