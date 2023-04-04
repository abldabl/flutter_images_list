import 'package:flutter/material.dart';
import 'package:flutter_image_list/presentation/image_screen/image_screen_arguments.dart';
import 'package:flutter_image_list/presentation/themes/app_theme_scope.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  /// also i don't like this code. i would wrote another controller for this screen.
  /// but in the task this screen has small functioanality
  /// so i just wrote in that way
  String? url(BuildContext context) => ModalRoute.of(context)!.settings.arguments != null
      ? (ModalRoute.of(context)!.settings.arguments as ImageScreenArguments).url
      : null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 25,
            child: GestureDetector(
              onTap: Navigator.of(context).pop,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  Icons.arrow_back,
                  color: AppTheme.of(context)!.colors.white(),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image(
              image: NetworkImage(url(context)!),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
