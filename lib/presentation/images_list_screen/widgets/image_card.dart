import 'package:flutter/material.dart';
import 'package:flutter_image_list/domain/response_models/images/get_images_response_model.dart';
import 'package:flutter_image_list/presentation/themes/app_theme_scope.dart';

class ImageCard extends StatelessWidget {
  final GetImagesResponseModelData image;
  final ValueSetter<String> onImageTap;

  const ImageCard({
    super.key,
    required this.image,
    required this.onImageTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(13),
      onTap: () => onImageTap(image.urls.raw),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(image.urls.small),
            fit: BoxFit.fitWidth,
            alignment: Alignment.center,
          ),
          borderRadius: BorderRadius.circular(13),
        ),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      stops: [
                        0,
                        1
                      ],
                      colors: [
                        Color(0x11000000),
                        Color(0xFF000000),
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    image.id,
                    style: AppTheme.of(context)!
                        .textStyles
                        .bold(size: 17, height: 0)
                        .copyWith(color: AppTheme.of(context)!.colors.white()),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    image.user.name,
                    style: AppTheme.of(context)!
                        .textStyles
                        .medium(size: 14, height: 0)
                        .copyWith(color: AppTheme.of(context)!.colors.white()),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
