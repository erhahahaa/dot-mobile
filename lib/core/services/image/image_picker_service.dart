import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dot_coaching/core/core.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ImagePickerService with FirebaseCrashLoggerService {
  ImagePicker? _imagePicker;
  ImageCropper? _imageCropper;

  ImagePickerService() {
    try {
      _imagePicker ??= _createImagePicker();
      _imageCropper ??= _createImageCropper();
    } catch (e) {
      nonFatalError(error: e, stackTrace: StackTrace.current);
    }
  }

  ImagePicker get imagePicker {
    try {
      _imagePicker ??= _createImagePicker();
      _imageCropper ??= _createImageCropper();
    } catch (e) {
      nonFatalError(error: e, stackTrace: StackTrace.current);
    }
    return _imagePicker ?? _createImagePicker();
  }

  ImagePicker _createImagePicker() => ImagePicker();
  ImageCropper _createImageCropper() => ImageCropper();

  @disposeMethod
  void dispose() async {
    _imagePicker = null;
    _imageCropper = null;
  }

  Future<Either<Failure, CroppedFile>> cropImage(
    XFile image, {
    CropAspectRatio? aspectRatio,
  }) async {
    try {
      final res = await _imageCropper?.cropImage(
        sourcePath: image.path,
        aspectRatio: aspectRatio ?? const CropAspectRatio(ratioX: 1, ratioY: 1),
        // cropStyle: CropStyle.circle,
        compressQuality: 10,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'DOT Image Cropper',
            // toolbarColor: Palette.maroonLatte,
            // toolbarWidgetColor: Palette.background,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true,
          ),
          IOSUiSettings(
            title: 'DOT Image Croppe',
          ),
        ],
      );
      if (res == null) throw Exception('No image selected');
      return Right(res);
    } on Exception catch (e, stackTrace) {
      nonFatalError(error: e, stackTrace: stackTrace);
      return Left(NoContentFailure(e.toString()));
    }
  }

  Future<Either<Failure, File>> getImageFromGallery({
    CropAspectRatio? aspectRatio,
  }) async {
    try {
      final res = await imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 100,
      );
      if (res == null) return const Left(NoContentFailure('No image selected'));
      final crop = await cropImage(res, aspectRatio: aspectRatio);
      return crop.fold(
        (l) => Left(l),
        (r) {
          File file;
          file = File(r.path);
          file = file.renameSync(res.path);
          return Right(file);
        },
      );
    } on Exception catch (e, stackTrace) {
      nonFatalError(error: e, stackTrace: stackTrace);
      return Left(NoContentFailure(e.toString()));
    }
  }

  Future<Either<Failure, File>> getImageFromCamera({
    CropAspectRatio? aspectRatio,
  }) async {
    try {
      final res = await imagePicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 100,
      );
      if (res == null) return const Left(NoContentFailure('No image selected'));
      final crop = await cropImage(res, aspectRatio: aspectRatio);
      return crop.fold(
        (l) => Left(l),
        (r) {
          File file;
          file = File(r.path);
          file = file.renameSync(res.path);
          return Right(file);
        },
      );
    } on Exception catch (e, stackTrace) {
      nonFatalError(error: e, stackTrace: stackTrace);
      return Left(NoContentFailure(e.toString()));
    }
  }
}
