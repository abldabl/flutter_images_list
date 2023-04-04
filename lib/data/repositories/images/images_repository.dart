import 'package:flutter_image_list/data/entries/base/base_entry.dart';
import 'package:flutter_image_list/data/entries/images/image_entry.dart';
import 'package:flutter_image_list/data/exceptions/exception.dart';
import 'package:flutter_image_list/data/repositories/base/base_repository.dart';

import 'images_remote_repository.dart';

abstract class ImagesRepository {
  Future<BaseEntry<List<ImageEntry>>> getImages();
}

class ImagesRepositoryImpl extends BaseRepository implements ImagesRepository {
  final _remoteRepository = ImagesRemoteRepositoryImpl();

  @override
  Future<BaseEntry<List<ImageEntry>>> getImages() async {
    try {
      return await _remoteRepository.getImages();
    } catch (e) {
      return BaseEntry<List<ImageEntry>>(error: BaseException(message: e.toString()));
    }
  }
}
