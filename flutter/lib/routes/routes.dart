import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart';
import '../pages/startup.dart';
import '../pages/ancient_documents.dart';

/// 画面遷移管理クラス
///
class Routes {
  /// ルーティング情報オブジェクトを取得する
  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (BuildContext context) => Home(title: AppLocalizations.of(context)!.app_top),
      '/ancient_documents': (BuildContext context) => AncientDocumentsTop(title: AppLocalizations.of(context)!.ancient_documents_top),
      '/ancient_documents/camera': (BuildContext context) => AncientDocumentsCamera(title: ''),
      // FIXME プライバシーポリシー画面
      //'/privacy_policy': (BuildContext context) => AncientDocumentsCamera(title: ''),
    };
  }
}