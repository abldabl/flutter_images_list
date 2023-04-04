import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_image_list/domain/interactors/images/get_images_interactor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'images_list_state.dart';

final imagesListScreenControllerProvider =
    StateNotifierProvider.autoDispose<ImagesListScreenController, ImagesListScreenState>(
  (ref) => ImagesListScreenController(ref),
);

class ImagesListScreenController extends StateNotifier<ImagesListScreenState> {
  late BuildContext _context;
  final Ref _ref;

  final GetImagesInteractor _getImagesInteractor = GetImagesInteractor();

  ImagesListScreenController(this._ref) : super(const ImagesListScreenState());

  Future<void> init(BuildContext context) async {
    _context = context;
    await _getImages();
  }

  Future<void> _getImages() async {
    final responseModel = await _getImagesInteractor.execute();
    if (responseModel.hasData) {
      state = state.copyWith(images: responseModel.data);
    } else {}
  }
}
