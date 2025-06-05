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
      '/logo': (BuildContext context) => Home(title: AppLocalizations.of(context)!.startup_home),
      '/splash': (BuildContext context) => Splash(title: AppLocalizations.of(context)!.startup_splash),
      '/ancient_documents': (BuildContext context) => AncientDocumentsTop(title: AppLocalizations.of(context)!.ancient_documents_top),
      '/ancient_documents/camera': (BuildContext context) => AncientDocumentsCamera(title: AppLocalizations.of(context)!.ancient_documents_camera),
      // FIXME プライバシーポリシー画面
      //'/privacy_policy': (BuildContext context) => AncientDocumentsCamera(title: ''),
    };
  }

  //
  static moveHome(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Splash(title: '',)));
  }
}