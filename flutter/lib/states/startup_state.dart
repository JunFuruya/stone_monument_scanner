import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../l10n/app_localizations.dart';
import '../pages/startup.dart';
import '../routes/routes.dart';
import '../ui/common_parts.dart';

/// 1-1-2. スプラッシュ画面 状態クラス
///
class SplashState extends State {
  //await dotenv.load(fileName: '.env');
  //dotenv.get('API_DOMAIN');
  //print('API_DOMAIN: ${dotenv.env['API_DOMAIN']}');

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
      // 遷移先を取得
      routes: Routes.getRoutes(),
    );
  }
}

/// 1-2. ホーム画面 状態クラス
class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonParts.getAppBar (context, "古文書スキャン"),
      drawer: CommonParts.getHamburgerMenu(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('TEST'),
            Text(
              '',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
