import 'package:flutter_image_list/data/entries/urls/urls_entry.dart';
import 'package:flutter_image_list/domain/response_models/urls/urls_model_data.dart';

class UrlsEntryToModelDataMapper {
  UrlsModelData map(UrlsEntry entry) => UrlsModelData(
        raw: entry.raw,
        small: entry.small,
      );
}
