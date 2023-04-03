import 'package:flutter_image_list/data/repositories/base/base_repository.dart';
import 'package:flutter_image_list/domain/base/base_response_model.dart';

import 'base_mapper_to_response_model.dart';

abstract class BaseInteractor<R extends BaseRepository, ResponseModel extends BaseResponseModel,
    Request> {
  R repository;

  BaseInteractor(this.repository);

  Future<ResponseModel> execute(Request request);
}

abstract class BaseEmptyInteractorWithMapper<R extends BaseRepository,
    ResponseModel extends BaseResponseModel, M extends BaseMapperToResponseModel> {
  R repository;
  M mapper;

  BaseEmptyInteractorWithMapper(this.repository, this.mapper);

  Future<ResponseModel> execute();
}

abstract class BaseInteractorWithMapper<R extends BaseRepository,
    ResponseModel extends BaseResponseModel, M extends BaseMapperToResponseModel, Request> {
  R repository;
  M mapper;

  BaseInteractorWithMapper(this.repository, this.mapper);

  Future<ResponseModel> execute(Request request);
}
