import 'package:flutter_image_list/data/entries/base/base_entry.dart';
import 'package:flutter_image_list/data/entries/images/image_entry.dart';
import 'package:flutter_image_list/domain/base/base_mapper_to_response_model.dart';
import 'package:flutter_image_list/domain/mappers/urls/urls_entry_to_model_data_mapper.dart';
import 'package:flutter_image_list/domain/mappers/user/user_entry_to_model_data_mapper.dart';
import 'package:flutter_image_list/domain/response_models/images/get_images_response_model.dart';

class GetImagesToResponseModelMapper
    extends BaseMapperToResponseModel<BaseEntry<List<ImageEntry>>, GetImagesResponseModel> {
  @override
  GetImagesResponseModel map(BaseEntry<List<ImageEntry>> entry) {
    final responseModel = GetImagesResponseModel();
    if (entry.hasData) {
      responseModel.data = _mapList(entry.data!);
    } else {
      responseModel.error = entry.error;
    }
    return responseModel;
  }

  List<GetImagesResponseModelData> _mapList(List<ImageEntry> list) => list
      .map((e) => GetImagesResponseModelData(
            id: e.id,
            createdAt: e.createdAt,
            updatedAt: e.updatedAt,
            width: e.width,
            height: e.height,
            description: e.description,
            altDescription: e.altDescription,
            likes: e.likes,
            user: UserEntryToModelDataMapper().map(e.user),
            urls: UrlsEntryToModelDataMapper().map(e.urls),
          ))
      .toList();
}
