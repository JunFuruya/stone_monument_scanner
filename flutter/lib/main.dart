import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'pages/startup.dart';
import '../l10n/app_localizations.dart';
import '../routes/routes.dart';

// メイン処理
void main() {
  // FIXME envファイルから取得する
  runApp(Application());
}

// アプリケーション
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
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
      home: Logo(title: ''),
      routes: Routes.getRoutes(),
    );
  }
}