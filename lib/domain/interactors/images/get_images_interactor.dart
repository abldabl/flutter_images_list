import 'package:flutter_image_list/data/exceptions/exception.dart';
import 'package:flutter_image_list/data/repositories/images/images_repository.dart';
import 'package:flutter_image_list/domain/base/base_interactor.dart';
import 'package:flutter_image_list/domain/mappers/images/get_images_to_response_model_mapper.dart';
import 'package:flutter_image_list/domain/response_models/images/get_images_response_model.dart';

class GetImagesInteractor extends BaseEmptyInteractorWithMapper<ImagesRepositoryImpl,
    GetImagesResponseModel, GetImagesToResponseModelMapper> {
  GetImagesInteractor() : super(ImagesRepositoryImpl(), GetImagesToResponseModelMapper());

  @override
  Future<GetImagesResponseModel> execute() async {
    try {
      final response = await repository.getImages();
      return mapper.map(response);
    } catch (_) {
      final exception = BaseException(
        exceptionEnum: ExceptionEnum.mapperError,
        message: ExceptionEnum.mapperError.name.getMessageForException(),
      );
      return GetImagesResponseModel(error: exception);
    }
  }
}
