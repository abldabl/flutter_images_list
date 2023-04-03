import 'package:flutter_image_list/data/entries/base/base_entry.dart';

import 'base_response_model.dart';

abstract class BaseMapperToResponseModel<E extends BaseEntry,
    ResponseModel extends BaseResponseModel> {
  ResponseModel map(E entry);
}
