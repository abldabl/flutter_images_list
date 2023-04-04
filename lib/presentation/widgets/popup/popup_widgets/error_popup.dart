import 'package:flutter/material.dart';
import 'package:flutter_image_list/data/exceptions/exception.dart';
import 'package:flutter_image_list/generated/l10n.dart';
import 'package:flutter_image_list/presentation/themes/app_theme_scope.dart';
import 'package:flutter_image_list/presentation/widgets/universal_button.dart';

class ErorrPopup extends StatelessWidget {
  final BaseException error;
  final VoidCallback? onDismiss;
  final String? btnText;

  const ErorrPopup({Key? key, required this.error, this.onDismiss, this.btnText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (onDismiss != null) {
          onDismiss!();
        }
        return true;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Material(
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      error.message ?? S.of(context).unknownInternalError,
                      style: AppTheme.of(context)!
                          .textStyles
                          .regular(
                            size: 15.0,
                            height: 15.0,
                          )
                          .copyWith(
                            color: AppTheme.of(context)!.colors.gray(),
                            fontWeight: FontWeight.w500,
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 28.5),
                    SizedBox(
                      width: double.infinity,
                      child: UniversalButton(
                        primaryColor: AppTheme.of(context)!.colors.red(),
                        onBtnPressed: onDismiss ?? Navigator.of(context).pop,
                        text: btnText ?? S.of(context).dismiss,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
