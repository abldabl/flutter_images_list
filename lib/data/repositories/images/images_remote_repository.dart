import 'package:flutter_image_list/core/constants/url_constants.dart';
import 'package:flutter_image_list/core/enums/request_type_enum.dart';
import 'package:flutter_image_list/data/entries/base/base_entry.dart';
import 'package:flutter_image_list/data/entries/base/base_response_entry.dart';
import 'package:flutter_image_list/data/entries/images/image_entry.dart';
import 'package:flutter_image_list/data/exceptions/exception.dart';
import 'package:flutter_image_list/data/repositories/base/base_remote_repository.dart';

import 'images_repository.dart';

class ImagesRemoteRepositoryImpl extends BaseRemoteRepository implements ImagesRepository {
  @override
  Future<BaseEntry<List<ImageEntry>>> getImages() async {
    try {
      BaseEntry<BaseResponseEntry> baseResponse = await client.makeRequest(
        requestType: RequestType.get,
        method: UrlConstants.getImages,
      );
      if (baseResponse.hasData) {
        return BaseEntry<List<ImageEntry>>(
          data: _mapImages(baseResponse.data!.response as List<dynamic>?),
        );
      } else {
        return BaseEntry<List<ImageEntry>>(
          error: BaseException(
            exceptionEnum: ExceptionEnum.localInternalError,
            message: baseResponse.error.toString(),
          ),
        );
      }
    } catch (e) {
      final exception = BaseException(
        exceptionEnum: ExceptionEnum.parseError,
        message: ExceptionEnum.parseError.name.getMessageForException(),
      );

      return BaseEntry<List<ImageEntry>>(error: exception);
    }
  }

  /// in real APIs there is no need in this awfull code
  /// because real APIs won't send List<dynamic> instead of normal object
  List<ImageEntry> _mapImages(List<dynamic>? list) =>
      list?.map((e) => ImageEntry.fromJson(e as Map<String, dynamic>)).toList() ?? const [];
}
