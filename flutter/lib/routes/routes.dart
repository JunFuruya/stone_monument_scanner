import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../main.dart';
import '../pages/ancient_documents.dart';

/// 画面遷移管理クラス
///
class Routes {
  /// ルーティング情報オブジェクトを取得する
  static MaterialApp getRoutes() {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ja', ''),
        const Locale('en', ''),
      ],
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => MyHomePage(title: AppLocalizations.of(context)!.app_top),
        '/ancient_documents': (BuildContext context) => AncientDocumentsTop(title: AppLocalizations.of(context)!.ancient_documents_top),
        '/ancient_documents/camera': (BuildContext context) => AncientDocumentsCamera(title: ''),
      },
    );
  }
}