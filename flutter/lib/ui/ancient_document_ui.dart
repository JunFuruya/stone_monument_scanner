import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';

class AncientDocumentUi {
  // 写真を撮るボタン
  static ElevatedButton getInvokeCameraButton(context, takePhoto) {
    return ElevatedButton(
      onPressed: takePhoto,
      child: Text(AppLocalizations.of(context)!.button_camera_invoke),
    );
  }

  // 写真を保存するボタン
  static Widget getSavePhotoButton(context, photo, savePhoto) {
    if (photo != null) {
      return ElevatedButton(
        onPressed: savePhoto,
        child: Text(AppLocalizations.of(context)!.button_save_photo),
      );
    } else {
      return SizedBox.shrink();
    }
  }

  // 写真を解析するボタン
  static Widget getAnalyzePhotoButton(context, photo, analyzePhoto) {
    if (photo != null) {
      return ElevatedButton(
          onPressed: analyzePhoto,
          child: Text(AppLocalizations.of(context)!.button_analyze_photo)
      );
    } else {
      return SizedBox.shrink();
    }
  }
}