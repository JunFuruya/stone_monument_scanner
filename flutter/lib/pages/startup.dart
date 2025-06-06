import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../l10n/app_localizations.dart';
import '../states/startup_state.dart';
import '../routes/routes.dart';

/// 1-1-1. ロゴ画面
///
class Logo extends StatelessWidget {
  const Logo({super.key, required String title});

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
      home: Splash(title: ''),
      routes: Routes.getRoutes(),
    );
  }
}

/// 1-1-2.スプラッシュ画面
///
class Splash extends StatefulWidget {
  final String title; // UIのところから"widget.変数名"で呼べる

  // コンストラクタ
  const Splash({super.key, required this.title});

  @override
  SplashState createState() => SplashState();
}

/// 1-2. ホーム画面
///
class Home extends StatefulWidget {
  // コンストラクタ
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => HomeState();
}
