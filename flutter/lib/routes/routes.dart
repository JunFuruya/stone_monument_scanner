import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../main.dart';
import '../pages/ancient_documents/top.dart';

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
        // FIXME 画面タイトル
        '/': (BuildContext context) => MyHomePage(title: AppLocalizations.of(context)!.app_title,),
        '/ancient_documents': (BuildContext context) => AncientDocumentsTop(title: 'page A')
        //'/ancient_documents/photo/camera': (BuildContext context) => MyPage(title: 'page B'),
        //'/ancient_documents/photo/': (BuildContext context) => MyPage(title: 'page B'),
      },
    );
  }
}