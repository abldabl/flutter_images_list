import 'package:flutter/material.dart';
import 'package:flutter_image_list/core/constants/text_constants.dart';
import 'package:flutter_image_list/core/enums/app_routes_enum.dart';
import 'package:flutter_image_list/generated/l10n.dart';
import 'package:flutter_image_list/presentation/image_screen/image_screen.dart';
import 'package:flutter_image_list/presentation/images_list_screen/images_list_screen.dart';
import 'package:flutter_image_list/presentation/themes/app_theme_scope.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      child: AppTheme(
        theme: AppTheme.light,
        child: Builder(
          builder: (context) => MaterialApp(
            title: TextConstants.appTitle,
            theme: ThemeData(
              scaffoldBackgroundColor: AppTheme.of(context)!.colors.white(),
              fontFamily: AppTheme.of(context)!.fontFamilies.getMainFontFamily(),
            ),
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              S.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            initialRoute: AppRoutesEnum.imagesList.name,
            routes: {
              AppRoutesEnum.imagesList.name: (context) => const ImagesListScreen(),
              AppRoutesEnum.image.name: (context) => const ImageScreen(),
            },
          ),
        ),
      ),
    );
  }
}
