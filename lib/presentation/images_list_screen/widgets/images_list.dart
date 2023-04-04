import 'package:flutter/material.dart';
import 'package:flutter_image_list/domain/response_models/images/get_images_response_model.dart';
import 'package:flutter_image_list/presentation/images_list_screen/widgets/image_card.dart';

class ImagesList extends StatelessWidget {
  final List<GetImagesResponseModelData> images;
  final ValueSetter<String> onImageTap;

  const ImagesList({
    super.key,
    required this.images,
    required this.onImageTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: List.generate(
        images.length,
        (i) => ImageCard(
          image: images[i],
          onImageTap: onImageTap,
        ),
      ),
    );
  }
}
