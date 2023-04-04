import 'package:flutter_image_list/domain/base/base_response_model.dart';
import 'package:flutter_image_list/domain/response_models/urls/urls_model_data.dart';
import 'package:flutter_image_list/domain/response_models/user/user_model_data.dart';

class GetImagesResponseModel extends BaseResponseModel<List<GetImagesResponseModelData>> {
  GetImagesResponseModel({List<GetImagesResponseModelData>? data, dynamic error})
      : super(data, error);
}

class GetImagesResponseModelData {
  final String id;
  final int? createdAt;
  final int? updatedAt;
  final int? width;
  final int? height;
  final String? description;
  final String? altDescription;
  final int likes;
  final UserModelData user;
  final UrlsModelData urls;

  GetImagesResponseModelData({
    required this.id,
    this.createdAt,
    this.updatedAt,
    this.width,
    this.height,
    this.description,
    this.altDescription,
    required this.likes,
    required this.user,
    required this.urls,
  });
}
