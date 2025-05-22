import 'package:flutter/material.dart';

import '../main.dart';
import '../pages/ancient_documents/top.dart';

/// 画面遷移管理クラス
///
class Routes {
  static MaterialApp getRoutes() {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        // FIXME 画面タイトル
        '/': (BuildContext context) => MyHomePage(title: 'initial page'),
        '/ancient_documents': (BuildContext context) => AncientDocumentsTop(title: 'page A')
        //'/ancient_documents/photo/camera': (BuildContext context) => MyPage(title: 'page B'),
        //'/ancient_documents/photo/': (BuildContext context) => MyPage(title: 'page B'),
      },
    );
  }
}