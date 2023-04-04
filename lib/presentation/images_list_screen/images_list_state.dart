import 'package:flutter_image_list/domain/response_models/images/get_images_response_model.dart';

class ImagesListScreenState {
  final List<GetImagesResponseModelData> images;

  const ImagesListScreenState({
    this.images = const [],
  });

  ImagesListScreenState copyWith({
    List<GetImagesResponseModelData>? images,
  }) =>
      ImagesListScreenState(
        images: images ?? this.images,
      );
}
