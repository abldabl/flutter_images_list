import 'package:flutter_image_list/core/data_info_status.dart';

class BaseResponseModel<T> implements DataInfoStatus {
  T? data;
  dynamic error;

  BaseResponseModel(this.data, this.error);

  @override
  bool get hasData => data != null;

  @override
  bool get hasError => error != null;
}
