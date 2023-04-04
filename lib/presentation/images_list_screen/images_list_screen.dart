import 'package:flutter/material.dart';
import 'package:flutter_image_list/core/constants/text_constants.dart';
import 'package:flutter_image_list/presentation/images_list_screen/images_list_controller.dart';
import 'package:flutter_image_list/presentation/images_list_screen/widgets/images_list.dart';
import 'package:flutter_image_list/presentation/themes/app_theme_scope.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImagesListScreen extends ConsumerStatefulWidget {
  const ImagesListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ImagesListScreenState();
}

class _ImagesListScreenState extends ConsumerState<ImagesListScreen> {
  late final ImagesListScreenController _screenController;

  @override
  void initState() {
    _screenController = ref.read(imagesListScreenControllerProvider.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _screenController.init(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final images = ref.watch(imagesListScreenControllerProvider.select((value) => value.images));

    return Scaffold(
      backgroundColor: AppTheme.of(context)!.colors.white(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Text(
                  TextConstants.appTitle,
                  style: AppTheme.of(context)!.textStyles.bold(size: 30, height: 0),
                ),
              ),
              const SizedBox(height: 20),
              ImagesList(
                images: images,
                onImageTap: _screenController.onImageTap,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
